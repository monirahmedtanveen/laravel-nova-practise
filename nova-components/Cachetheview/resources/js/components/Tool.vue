<template>
    <div>
        <heading class="mb-6">Cache The View</heading>

        <card
            class="flex flex-col items-center justify-center"
            style="min-height: 300px"
        >

            <h1 class="text-black text-4xl text-90 font-light mb-6">
                Enable Your Application View Cache
            </h1>

            <button @click="activateCache" class="btn btn-default btn-primary">Enable Cache</button>
        </card>
    </div>
</template>

<script>
export default {
    methods : {
        activateCache () {
            alert("Success THE SHIT");
            Nova.request().post('/nova-vendor/cachetheview/')
                .then (data => {
                    alert("Successfully cache the view");
                });
        }
    }
}
</script>

<style>
/* Scoped Styles */
</style>
