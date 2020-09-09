<template>
    <card class="flex flex-col items-center justify-center text-4xl mb-4">
        <div class="flex mb-4">
            <h3 class="mr-3 text-base text-80 font-bold">Clock</h3>
        </div>
        
        <template>
            <digital-clock :blink="card.blink" :twelveHour="card.twelveHour" :displaySeconds="card.displaySeconds" />
        </template>
    </card>
</template>

<script>

import DigitalClock from "vue-digital-clock";

export default {
    props: [
        'card',
    ],

    components: {
        DigitalClock
    },
}
</script>
