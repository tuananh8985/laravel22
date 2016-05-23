
@extends('layouts/default')

@section('header')
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> Show
        </h1>

        @if(Session::has('flash-message'))
            <div class="alert alert-success">{{ Session::get('flash-message') }}</div>
        @endif

    </div>
@endsection

@section('content')

    {!! Html::linkRoute('worker-skills', 'Skills', ['id' => $worker->id],['class'=>'btn btn-success center']) !!}
    <div class="row">
        <div class="col-md-12">
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <table class="table table-condensed table-striped">
        <tr>
            <td>Name</td>
            <td>{{ $worker->name }}</td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>{{ $worker->gender }}</td>
        </tr>
        <tr>
            <td>Birth date</td>
            <td>{{ $worker->birth_date }}</td>
        </tr>
        <tr>
            <td>Phones</td>
            <td>{{ $worker->phones->implode('number', ' | ') }}</td>
        </tr>
        <tr>
            <td>Skills</td>
            <td>{{ $worker->skills->implode('name', ' | ') }}</td>
        </tr>
    </table>
    {!! Html::linkRoute('worker-list', 'Back') !!}
</div>
</div>
@endsection

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
