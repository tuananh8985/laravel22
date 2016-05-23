
@extends('layouts/default')

@section('header')
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> Add Workers
        </h1>
        {{-- @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif --}}

        @if(Session::has('flash-message'))
            <div class="alert alert-success">{{ Session::get('flash-message') }}</div>
        @endif

    </div>
@endsection

@section('content')
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            {!! Form::open(['route' => 'worker-store','id'=>'idForm']) !!}
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
             <div class="row">
                {!! Form::label('Name:') !!}
                {!! Form::text('name', '', [
                    'class' => 'form-control',
                    ]) !!}
                </div>
                <div class="row">
                    {!! Form::label('Gender:') !!}
                    {!! Form::radio('gender', 'male', false) !!} Male
                    {!! Form::radio('gender', 'female', false) !!} Female
                </div>
                <div class="row">
                    {!! Form::label('Phone:') !!}
                    {!! Form::text('number', '', ['class' => 'form-control']) !!}
                </div>
                <div class="row">
                    {!! Form::label('Birth date:') !!}
                    {!! Form::date('birth_date','',['class' => 'form-control']) !!}
                </div>

                <div class="row">
                    {!! Form::label('Description:') !!}
                    {!! Form::textarea('description','',['class' => 'form-control']) !!}
                </div>
                <hr>
                <div class="row">
                    {!! Form::submit('Save') !!}
                    {!! Html::linkRoute('worker-list', 'Cancel') !!}
                </div>
                {!! Form::close() !!}
            </div>
        </div>

    @endsection


    @section('js')
        <script src="{{asset('vendor/jsvalidation/js/jsvalidation.min.js')}}"></script>
        {!! JsValidator::formRequest('App\Http\Requests\WorkCreateRequest', '#idForm'); !!}

    @endsection
