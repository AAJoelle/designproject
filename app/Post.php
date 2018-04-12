<?php

namespace App;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\HasRelationships;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class Post extends Model
{
   use Translatable,
        Resizable,
        HasRelationships;

//  protected $translatable = ['material_name', 'course_code', 'title', 'body', 'lecturer'];

    const PUBLISHED = 'PUBLISHED';

    protected $guarded = [];

    public function save(array $options = [])
    {
        // If no author has been assigned, assign the current user's id as the author of the post
        if (!$this->author_id && Auth::user()) {
            $this->author_id = Auth::user()->id;
        }

        parent::save();
    }

    public function authorId()
    {
        return $this->belongsTo(Voyager::modelClass('User'), 'author_id', 'id');
    }

    /**
     * Scope a query to only published scopes.
     *
     * @param \Illuminate\Database\Eloquent\Builder $query
     *
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopePublished(Builder $query)
    {
        return $query->where('status', '=', static::PUBLISHED);
    }

    // public function category()
    // {
    //     return $this->belongsTo(Voyager::modelClass('Category'));
    // }

        //each post belongsTo a Faculty
  public function faculty()
 {
     return $this->belongsTo('App\Faculty');
 }

     //each post belongsTo a Department
  public function department()
 {
    return $this->belongsTo('App\Department');
 }

    // each post belongsTo a course
  public function course()
 {
     return $this->belongsTo('App\Course');
 }

   //each post belongsTo a material
  public function material()
 {
     return $this->belongsTo('App\Material');
 }
}


