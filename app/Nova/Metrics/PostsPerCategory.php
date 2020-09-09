<?php

namespace App\Nova\Metrics;

use App\Nova\Filters\PostCategories;
use App\Nova\Filters\PostPublished;
use App\Post;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Metrics\Partition;
use Nemrutco\Filterable\FilterablePartition;

class PostsPerCategory extends Partition
{
    use FilterablePartition;

    /**
     * Calculate the value of the metric.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return mixed
     */
    public function calculate(NovaRequest $request)
    {
        return $this->count($request, Post::class, 'category');
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
        return 'posts-per-category';
    }

    public function filters()
    {
	    return [
		    new PostPublished,
            new PostCategories
	    ];
    }
}
