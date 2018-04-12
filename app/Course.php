<?php

namespace App;

//use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
// use Illuminate\Support\Facades\Auth;
// use TCG\Voyager\Facades\Voyager;
// use TCG\Voyager\Traits\HasRelationships;
// use TCG\Voyager\Traits\Resizable;
// use TCG\Voyager\Traits\Translatable;

class Course extends Model
{
   // use Translatable,
   //      Resizable,
   //      HasRelationships;

      public function level()
   {
     //each course belongsTo a Level
       return $this->belongsTo('App\Level');
   }

     public function department()
    {
      //each course belongsTo a department
        return $this->belongsTo('App\Department');
    }

      public function faculty()
     {
       //each course belongsTo a faculty
         return $this->belongsTo('App\Faculty');
     }

     public function posts()
    {
      //each course hasMany posts
        return $this->hasMany('App\Post');
    }

     public function materials()
    {
      //each course hasMany materials
        return $this->hasMany('App\Material');
    }
}
