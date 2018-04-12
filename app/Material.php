<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
    
  public function posts()
 {
   //each material hasMany posts
     return $this->hasMany('App\Post');
 }


// public function getRouteKeyName()
// {

//     return 'materials.material_id';
// }
//  protected $primaryKey = 'material_id';
}
