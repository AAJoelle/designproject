<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
     //each department belongsTo a Faculty
  public function faculty()
 {
     return $this->belongsTo('App\Faculty');
 }

 public function courses()
{
  //each department hasMany courses
    return $this->hasMany('App\Course');
}

 public function posts()
    {
      //each department hasMany posts
        return $this->hasMany('App\Post');
    }
// public function getRouteKeyName()
// {

//     return 'dept_id';
// }
//  protected $primaryKey = 'dept_id';
}
