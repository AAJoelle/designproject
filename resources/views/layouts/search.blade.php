

<div class="container">

  <form class="form-inline" action="/" method="get" autocomplete="on">

    <div class="form-group">
      <input type="text" class="ico-01" id="course_code" placeholder="course_code e.g COT304" name="course_code">


      <input list="materials"  name="material_name" type="text" class="form-control" id="material_name" placeholder="Tutorials, C.A Questions, ..." >

      <datalist class="materials">

        @foreach ($materials as $material)

        <option value="{{$material->material_name}}">

        @endforeach

      </datalist>

      <button style="font-size:24px"><i class="fa fa-search"></i></button>

  </div>

  </form>

</div>
