@extends('home')


@section('content')


<h1> WELCOME </h1>

<h2>Select Faculty/Department to proceed</h2>


 @foreach ($faculties as $faculty) 
<div class="w3-dropdown-hover">
   

   <a href="/faculties/{{$faculty->id}}"> <button class="w3-button w3-blue" id="faculty">{{$faculty->faculty_name}} </button> </a>


    <div class="w3-dropdown-content w3-bar-block w3-border">


     @foreach ($faculty->departments as $department)

         <a href="/{{$faculty->faculty_abbreviation}}/{{$department->department_name}}/courses" class="w3-bar-item w3-button">{{$department->department_name}}</a>

      @endforeach


    </div>

  </div>


@endforeach







@endsection







