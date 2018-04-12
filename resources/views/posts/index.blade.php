@extends('home')


        @section('content')
        
    <div class="container">
    
      @foreach($posts as $post)
      
      <div><a href="/posts/{{$post->id}}">
        
        <h3>
          {{$post['title']}}
        </h3>

          <p>
        {{$post->material_id}}
        </p>

        <p>
        {{$post['body']}}
        </p>

        {{$post->created_at->toFormattedDateString()}}
      </a>
      </div>
      @endforeach
  </div>

        @endsection
