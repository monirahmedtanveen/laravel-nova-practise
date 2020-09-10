<template>
    <loading-view :loading="loading">
        <heading class="mb-3">{{__("Edit Profile")}}</heading>

        <card class="overflow-hidden">
            <form @submit.prevent="saveProfile">
                <!-- Validation Errors -->
                <validation-errors :errors="validationErrors"/>

                <!-- Fields -->
                <div class="flex border-b border-40" resource-id="1">
                    <div class="w-1/5 px-8 py-6">
                        <label for="name" class="inline-block text-80 pt-2 leading-tight">Name<span class="text-danger text-sm">*</span></label>
                    </div>
                    
                    <div class="py-6 px-8 w-1/2">
                        <input id="name" name="name" v-model="fields.name" v-bind:class="(errors && errors.name)?'border-danger':''" dusk="name" list="name-list" type="text" placeholder="Name" class="w-full form-control form-input form-input-bordered">
                        <div v-if="errors && errors.name" class="help-text help-text mt-2 text-danger">{{ errors.name[0] }}</div>
                    </div>
                </div>
                
                <div class="flex border-b border-40" resource-id="1">
                    <div class="w-1/5 px-8 py-6">
                        <label for="email" class="inline-block text-80 pt-2 leading-tight">Email<span class="text-danger text-sm">*</span></label>
                    </div>
                    
                    <div class="py-6 px-8 w-1/2">
                        <input id="email" name="email" v-model="fields.email" v-bind:class="(errors && errors.email)?'border-danger':''" dusk="email" list="email-list" type="text" placeholder="Email" class="w-full form-control form-input form-input-bordered">
                        <div v-if="errors && errors.email" class="help-text help-text mt-2 text-danger">{{ errors.email[0] }}</div>
                    </div>
                </div>

                <div class="flex border-b border-40">
                    <div class="w-1/5 px-8 py-6">
                        <label for="user_type" class="inline-block text-80 pt-2 leading-tight">User Type<span class="text-danger text-sm">*</span></label>
                    </div>
                
                    <div class="py-6 px-8 w-1/2">
                        <select id="user_type" name="user_type" v-model="fields.user_type" dusk="category" class="w-full form-control form-select">
                            <option value="" :selected="true" disabled="disabled">Choose an option</option>
                            <option v-for="u_type in fields.user_types">{{ u_type }}</option>
                        </select>
                
                        <div class="help-text help-text mt-2"></div>
                    </div>
                </div>
                
                <div class="flex border-b border-40" resource-id="1">
                    <div class="w-1/5 px-8 py-6">
                        <label for="password" class="inline-block text-80 pt-2 leading-tight">Password</label>
                    </div>
                    
                    <div class="py-6 px-8 w-1/2">
                        <input id="password" name="password" v-model="fields.password" v-bind:class="(errors && errors.password)?'border-danger':''" dusk="password" type="password" placeholder="Password" autocomplete="new-password" class="w-full form-control form-input form-input-bordered">
                        <div v-if="errors && errors.password" class="help-text help-text mt-2 text-danger">{{ errors.password[0] }}</div>
                    </div>
                </div>

                <div class="flex border-b border-40 remove-bottom-border" resource-id="1">
                    <div class="w-1/5 px-8 py-6">
                        <label for="password_confirmation" class="inline-block text-80 pt-2 leading-tight">Password Confirmation</label>
                    </div>
                    
                    <div class="py-6 px-8 w-1/2">
                        <input id="password_confirmation" name="password_confirmation" v-model="fields.password_confirmation" v-bind:class="(errors && errors.password)?'border-danger':''" dusk="password" type="password" placeholder="Password Confirmation" autocomplete="new-password" class="w-full form-control form-input form-input-bordered">
                        <div v-if="errors && errors.password" class="help-text help-text mt-2 text-danger">{{ errors.password[0] }}</div>
                    </div>
                </div>

                <!-- Create Button -->
                <div class="bg-30 flex px-8 py-4">
                    <button dusk="create-and-add-another-button" class="ml-auto btn btn-default btn-primary mr-3">
                        {{__('Save Profile')}}
                    </button>
                </div>
            </form>
        </card>
    </loading-view>
</template>

<script>
    export default {

        data: () => ({
            loading: true,
            fields: {},
            errors: {}
        }),

        created() {
            this.getFields()
        },

        methods: {
            /**
             * Get the available fields for the resource.
             */
            async getFields() {
                this.fields = {}

                const { data: fields } = await Nova.request().get(
                    '/nova-vendor/fastpay/editprofile'
                )

                // console.log(fields)

                this.fields = fields
                this.loading = false
            },

            /**
             * Saves the user's profile
             */
            async saveProfile() {
                try {
                    this.loading = true
                    const response = await this.createRequest()
                    this.loading = false

                    this.$toasted.show(
                        this.__('Your profile has been saved!'),
                        { type: 'success' }
                    )

                    // Reset the form by refetching the fields
                    this.getFields()

                    this.validationErrors = new Errors()
                } catch (error) {
                    this.loading = false
                    
                    if (error.response.status == 422) {
                        this.errors = error.response.data.errors

                        console.log(this.errors)
                    }

                    this.$toasted.show(
                        this.__('There was a problem submitting the form'),
                        { type: 'error' }
                    )
                }
            },

            /**
             * Send a create request to update the user's profile data
             */
            createRequest() {
                return Nova.request().post(
                    '/nova-vendor/fastpay/editprofile',
                    this.fields
                )
            },
        },
    }
</script>
