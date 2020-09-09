<?php

namespace App\Nova\Metrics;

use App\Post;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Metrics\Trend;
use Laravel\Nova\Metrics\TrendResult;

class PostsPerDay extends Trend
{
    # name() function and public $name both are same. Use either one of them.
    public $name = 'Posts Per Month';

    // public function name(){
    //     return 'Posts Per Week';
    // }

    /**
     * Calculate the value of the metric.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return mixed
     */
    public function calculate(NovaRequest $request)
    {
        // return $this->countByDays($request, Post::class);
        return $this->countByMonths($request, Post::class)
            ->showLatestValue();

        # If I want to set manual report by my own
        // return (new TrendResult)->trend([
        //     'Day 1' => 4,
        //     'Day 2' => 9,
        //     'Day 3' => 85  
        // ]);
    }

    /**
     * Get the ranges available for the metric.
     *
     * @return array
     */
    public function ranges()
    {
        # For Days Trend
        // return [
        //     30 => '30 Days',
        //     60 => '60 Days',
        //     90 => '90 Days',
        // ];

        return [
            6 => '6 Months',
            12 => '12 Months',
        ];
    }

    /**
     * Determine for how many minutes the metric should be cached.
     *
     * @return  \DateTimeInterface|\DateInterval|float|int
     */
    public function cacheFor()
    {
        // return now()->addMinutes(5);
    }

    /**
     * Get the URI key for the metric.
     *
     * @return string
     */
    public function uriKey()
    {
        return 'posts-per-day';
    }
}
