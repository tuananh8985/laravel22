
@extends('layouts/default')

@section('header')
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> Add Phones
        </h1>
        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        @if(Session::has('flash-message'))
            <div class="alert alert-success">{{ Session::get('flash-message') }}</div>
        @endif

    </div>
@endsection

@section('content')
    <div class="row">
        <div class="col-md-6 col-md-offset-3">


            {!! Form::open(['route' => ['phone.store',$worker_id],'id'=>'idForm','method'=>'POST']) !!}
            {!! Form::hidden('worker_id', $worker_id) !!}
            <div class="row">
                {!! Form::label('Phone:') !!}
                {!! Form::text('number', '', ['class' => 'form-control']) !!}
            </div>

            <hr>
            <div class="row">
                {!! Form::submit('Save') !!}
                {!! Html::linkRoute('phone.index', 'Cancel',['id' => $worker_id]) !!}
            </div>
            {!! Form::close() !!}
        </div>
    </div>

@endsection
@section('js')
    <script src="{{asset('vendor/jsvalidation/js/jsvalidation.min.js')}}"></script>
    {{-- {!! JsValidator::make(App\WorkRequest::rules(),[], [], '#idForm') !!} --}}
    {!! JsValidator::formRequest('App\Http\Requests\PhoneRequest', '#idForm'); !!}

@endsection
