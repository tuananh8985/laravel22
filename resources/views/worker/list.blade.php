@extends('layouts/default')

@section('header')

    <div class="page-header clearfix">
        {!! Form::open(['route' => 'worker-list','method'=>'get']) !!}
        {!! Form::select('filter',
            ['0'=>'---- All ----','1' => 'Viettel','2' => 'Vinaphone','3' => 'MobilePhone'],
            Input::get('filter'),['onchange'=>'this.form.submit()','class'=>'btn btn-default dropdown-toggle']) !!}

            {!! Form::select('gender',
                ['0'=>'---- All ----','1'=>'Male','2' => 'Female'],
                Input::get('gender'),['onchange'=>'this.form.submit()','class'=>'btn btn-default dropdown-toggle']) !!}
                {!! Form::close() !!}


                <h1>
                    <i class="glyphicon glyphicon-align-justify"></i> Workers
                    <a class="btn btn-success pull-right" href="{{ route('worker-new') }}"><i class="glyphicon glyphicon-plus"></i> New Worker</a>
                </h1>

                @if(Session::has('flash-message'))
                    <div class="alert alert-success">{{ Session::get('flash-message') }}</div>
                @endif
            </div>
        @endsection

        @section('content')
            <div class="row">
                <div class="col-md-12">
                    @if($workers->count())
                        <table class="table table-condensed table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Birth date</th>
                                    <th>Gender</th>
                                    <th>Phones</th>
                                    <th class="text-right">Options</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach($workers as $worker)
                                    <tr>
                                        <td>{{$worker->id}}</td>
                                        <td>{{$worker->name}}</td>
                                        <td>{{$worker->birth_date}}</td>
                                        <td>{{$worker->gender}}</td>
                                        <td>
                                            @if($worker->phones->count())
                                                {{ $worker->phones->implode('number', ', ') }}
                                            @else
                                                No phone
                                            @endif
                                        </td>
                                        <td class="text-right">

                                            <a class="btn btn-xs btn-primary" href="{{ route('worker.view', $worker->id) }}"><i class="glyphicon glyphicon-eye-open"></i> View</a>
                                            <a class="btn btn-xs btn-warning" href="{{ route('worker-edit', $worker->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                                            <a class="btn btn-xs btn-warning" href="{{ route('phone.index', $worker->id) }}"><i class="glyphicon glyphicon-edit"></i> Phone</a>

                                            {!! Form::open(['route' => ['worker-destroy',$worker->id],'method'=>'delete','style'=>'display: inline;','onsubmit'=>"return confirm('Delete? Are you sure?')"]) !!}
                                            {!! Form::button('<i class="glyphicon glyphicon-trash"></i> Delete', ['type'=>'submit','class' => 'btn btn-xs btn-danger']) !!}
                                            {!! Form::close() !!}

                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {!! $workers !!}
                    @else
                        <h3 class="text-center alert alert-info">Empty!</h3>
                    @endif

                </div>
            </div>

        @endsection
