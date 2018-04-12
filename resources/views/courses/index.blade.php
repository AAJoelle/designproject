@extends('home')

@section('content')

<h1>COURSES</h1>

<h3>Please select a course</h3>


<!-- level 200 courses -->
<div class="col-md-4">
  <h3>Level 200 courses</h3>

     <table>

       <tr>
        <th>Course_Code</th>
        <th>Course_Name</th>
      </tr>


       @foreach ($courses as $course)
          <tr><a href='/{{$course->course_code}}/posts'>

            <td>{{$course->course_code}}</td>
            <td>{{$course->course_name}}</td>
         </a>
        </tr>
       @endforeach


</table>

</div>


<!-- level 300 courses -->
<div class="col-md-4">
  <h3>Level 300 courses</h3>

   <table>

      <tr>
        <th>Course_Code</th>
        <th>Course_Name</th>
      </tr>

        
       @foreach ($courses2 as $course)
          <tr class='clickable-row' data-href='/{{$course->course_code}}/posts'>

            <td>{{$course->course_code}}</td>
            <td>{{$course->course_name}}</td>
         
        </tr>
       @endforeach
      

</table>

</div>


<!-- level 400 courses -->
<div class="col-md-4">
  <h3>Level 400 courses</h3>

      <table>

        <tr>
        <th>Course_Code</th>
        <th>Course_Name</th>
      </tr>

        
       @foreach ($courses3 as $course)
          <tr class='clickable-row' data-href='/{{$course->course_code}}/posts'>

            <td>{{$course->course_code}}</td>
            <td>{{$course->course_name}}</td>
         
        </tr>
       @endforeach
</table>
</div>



@endsection