@extends('layouts.app')

@section('title', 'Groups')

@section('content')
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<a href="/groups/create" class="btn btn-outline-primary">Add Groups</a>
    <div class="row mt-3">
		<div class="col-md-6">

@foreach($groups as $group)

<div class="card border-success" style="width: 18rem;">
<div class="card-header">
<a href="/groups/{{ $group['id'] }}" class="card-title">{{ $group['name'] }}</a>
  </div>
    <div class="card-body">
        
        <ul class="list-group list-group-flush">
            <li class="list-group-item">{{ $group['description'] }}</li>
        </ul>
        <hr>
        <a href="" class="btn btn-outline-primary">Tambah Anggota</a>

      @foreach ($group->friends as $friend)
      <li><i class="fa fa-address-card" aria-hidden="true"></i>{{$friend->nama}}</li>
      @endforeach

       
        <hr>
        <a href="/groups/{{ $group['id'] }}/edit" class="btn btn-outline-warning">Edit Group</a>
        <form action="/groups/{{ $group['id'] }}" method="POST">
        @csrf
        @method('DELETE')
        <button class="btn btn-outline-danger">Delete Group</button>
        </form>
    </div>
</div>

@endforeach

<div>
<div class="row mt-3">
		<div class="col-md-6">
{{ $groups->links() }}
</div>
</div>
</div>

@endsection
