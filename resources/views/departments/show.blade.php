@extends('home')


@section('content')


 <div class="w3-dropdown-content w3-bar-block w3-border">

     @foreach ($departments as $department)


         <a href="/{{$faculty->faculty_abbreviation}}/{{$department->department_name}}/courses" class="w3-bar-item w3-button">{{$department->department_name}}</a>

      @endforeach


    </div>






   @endsection