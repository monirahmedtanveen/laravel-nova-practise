<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Nova\Actions\Actionable;

class Post extends Model
{
    use Actionable;
    
    protected $fillable = [
        'title',
        'body',
        'is_published',
    ];

    protected $casts = [
        'publish_at' => 'datetime',
        'publish_until' => 'datetime',
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function tags(){
        return $this->belongsToMany(Tag::class)->withPivot('can_view', 'can_create');
    }
}
