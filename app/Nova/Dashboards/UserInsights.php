<?php

namespace App\Nova\Dashboards;

use App\Nova\Metrics\NewUsers;
use App\Nova\Metrics\PostCount;
use App\Nova\Metrics\PostsPerCategory;
use App\Nova\Metrics\PostsPerDay;
use App\Nova\Metrics\TotalUser;
use App\Nova\Metrics\UsersPerType;
use Beyondcode\NovaClock\NovaClock;
use Laravel\Nova\Dashboard;

class UserInsights extends Dashboard
{
    public static function label(){
        return 'User Insight';
    }

    /**
     * Get the cards for the dashboard.
     *
     * @return array
     */
    public function cards()
    {
        return [
            new TotalUser,
            new NewUsers,
            new UsersPerType,
        ];
    }

    /**
     * Get the URI key for the dashboard.
     *
     * @return string
     */
    public static function uriKey()
    {
        return 'user-insights';
    }
}
