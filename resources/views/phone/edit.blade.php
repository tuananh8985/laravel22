
@extends('layouts/default')

@section('header')
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> Edit phones
        </h1>
        @foreach($phones as $phone)

        <a class="btn btn-success pull-right" href="{{ route('phone.index',$phone->worker_id) }}">{{ 'Back'  }}</a>
        @endforeach
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
            @foreach($phones as $phone)
            {!! Form::open(['route' => ['phone.update',$phone->id],'id'=>'idForm','method'=>'PUT'])!!}

            <div class="row">
                {!! Form::label('Phone Number:') !!}

                    {!! Form::text('number',"$phone->number",['class' => 'form-control']) !!}

            </div>

            <hr>
            <div class="row">
                {!! Form::submit('Save') !!}
                {!! Html::linkRoute('phone.index', 'Cancel',['id' => $phone->worker_id]) !!}

            </div>
            {!! Form::close() !!}
            @endforeach

            {{-- @foreach($workers as $worker)
            <a class="btn btn-xs btn-warning" href="{{ route('phone.edit', $worker->id) }}"><i class="glyphicon glyphicon-edit"></i> Cancalll</a>
            @endforeach --}}
        </div>
    </div>

@endsection

@section('js')
    <script src="{{asset('vendor/jsvalidation/js/jsvalidation.min.js')}}"></script>
    {!! JsValidator::formRequest('App\Http\Requests\PhoneRequest', '#idForm'); !!}

@endsection
