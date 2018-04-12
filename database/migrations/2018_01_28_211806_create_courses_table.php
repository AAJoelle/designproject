<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->increments('id');
            $table->string('course_code', 6);
            $table->string('course_name');
            $table->integer('level_id')->unsigned();
            $table->integer('faculty_id')->unsigned();
            $table->integer('department_id')->unsigned()->nullable();
            $table->timestamps();

             $table->foreign('level_id')->references('id')->on('levels');
             $table->foreign('faculty_id')->references('id')->on('faculties');
             $table->foreign('department_id')->references('id')->on('departments');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('courses');
    }
}
