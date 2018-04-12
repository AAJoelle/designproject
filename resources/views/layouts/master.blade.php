<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>EDUPLUS</title>
        <meta name="keywords" content="Learn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
        Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        {{-- bootstrap --}}

          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <!-- Custom Theme files -->
        <link rel="stylesheet" href="/css/app.css">
        <link rel="stylesheet" href="/css/base.css">
        <link rel="stylesheet" href="/css/responsive.min.css">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css" >
        <link rel="stylesheet" href="/css/bootstrap.min.css">




                <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

  <body>
{{-- navigation  --}}
@include('layouts.nav')


{{-- banner taken from style.css and search form--}}
<div class="parallax">
  <div class="material">

    {{-- search-form --}}
      <div class="search_keywords">

        @include('layouts.search')

      </div>
</div>
</div>

<!-- recent posts -->
@include('posts.index')


{{-- footer --}}
      <div class="container">


      @include('layouts.footer')

</div>

  </body>
</html>
