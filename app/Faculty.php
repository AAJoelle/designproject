<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Faculty extends Model
{
  //each faculty has many departments
  public function departments()
 {
     return $this->hasMany('App\Department');
     
 }

 public function courses()
{
  //each faculty hasMany courses
    return $this->hasMany('App\Course');
}

 public function posts()
    {
      //each faculty hasMany posts
        return $this->hasMany('App\Post');
    }
// public function getRouteKeyName()
// {

//     return 'faculties.fac_id';
// }

  protected $table = 'faculties';

}
