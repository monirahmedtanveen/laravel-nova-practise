<?php

namespace App\Nova;

use App\Nova\Actions\PublishPost;
use App\Nova\Actions\UnpublishPost;
use App\Nova\Filters\PostCategories;
use App\Nova\Filters\PostPublished;
use App\Nova\Lenses\MostTags;
use App\Nova\Metrics\PostCount;
use App\Nova\Metrics\PostsPerCategory;
use App\Nova\Metrics\PostsPerDay;
use Beyondcode\NovaClock\NovaClock;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\BelongsToMany;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\DateTime;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Trix;
use Laravel\Nova\Http\Requests\NovaRequest;
use Beyondcode\StringLimit\StringLimit;
use NrmlCo\NovaBigFilter\NovaBigFilter;

class Post extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Post::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'title';

    /**
     * If I want to remove global search for this model, set $globallySearchable = false.
     */
    public static $globallySearchable = true;

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'title', 'body', 
    ];

    public function title(){
        return $this->title . ' : ' . $this->category;
    }

    public function subtitle(){
        return 'Author: ' . $this->user->name . ' | Publish Until: ' . $this->publish_until;
    }

    /**
     *  For index page query builder. I can set query for post index page.
     *  Build an "index" query for the given resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public static function indexQuery(NovaRequest $request, $query)
    {
        // return $query->where('user_id', $request->user()->id);
    }

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make()->sortable(),

            StringLimit::make('Title')->rules([
                'required'
            ])->max(10),

            Trix::make('Body')->rules('required'),
            
            DateTime::make('Publish Post At', 'publish_at')
                ->hideFromIndex()
                ->rules('after_or_equal:today'),

            DateTime::make('Publish Until')
                ->hideFromIndex()
                ->rules('after_or_equal:publish_at'),

            Boolean::make('Is Published')
                ->canSee(function ($request) {  /** Authorization */
                    return true;
                }),

            Select::make('Category')->options([
                'tutorials' => 'Tutorials',
                'news' => 'News',
            ])->hideWhenUpdating()->rules('required'),

            BelongsTo::make('User')->rules('required')->searchable(),

            BelongsToMany::make('Tags')
                ->fields(function () {
                    return [
                        Boolean::make('Can View', 'can_view'),
                        Boolean::make('Can Create', 'can_create')
                    ];
                })
        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [
            (new NovaClock())
                ->blink()
                // ->displaySeconds()
                ->twelveHour()
                ->width('1/2'),
            (new PostsPerDay)->width('1/2'),
            (new PostCount)->width('1/2'),
            (new PostsPerCategory)->width('1/2'),
            new NovaBigFilter,
        ];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [
            new PostPublished,
            new PostCategories
        ];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [
            new MostTags
        ];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [
            (new PublishPost)->canSee(function ($request) {
                return $request->user()->id === 1;
            }),
            (new UnpublishPost)->canSee(function ($request) {
                return $request->user()->id == 1;
            })->canRun(function ($request, $post) {
                // return $post->id === 3;
                return true;
            })
        ];
    }
}
