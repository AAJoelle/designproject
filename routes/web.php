<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


//homepage

Route::get('/', 'MaterialController@index');


//Route::get('/materials/{material}', 'MaterialController@show');

Route::get('/faculties/{material_name}', 'FacultyController@index');


//faculty menu on navigation bar
Route::get('/faculties', 'FacultyController@index');


//when you hover or click a faculty, it dropdowns a department
 Route::get('/faculties/{faculty}', 'FacultyController@index');


//when you select a department, you will view its courses

Route::get('/{faculty_abbreviation}/{department_name}/courses/', 'CourseController@index');

//click on a course to view related posts
Route::get('/{course_code}/posts/', 'PostController@index');


//for posts link on navigation bar 
 Route::get('/posts','PostController@index');


//displays a specific post
  Route::get('/posts/{post}','PostController@show');


 //display post of a course
   Route::get('/{course_code}/{material_name}/posts', 'PostController@index');


//about page
Route::get('/about', function (){
  return view('layouts.about');

});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
