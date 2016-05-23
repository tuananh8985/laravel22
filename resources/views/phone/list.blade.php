
@extends('layouts/default')
@section('header')
    <div class="page-header clearfix">
        <h1>
            <i class="fa fa-home"></i> List phone
            @permission('edit_workers')

            {{-- @foreach($phones as $key => $phone)

        @endforeach --}}
        @endpermission
            {{-- kiểm tra biến in ra dump($phones->first()->number) --}}
        <a class="btn btn-success pull-right" href="{{ route('worker-list') }}">{{ 'Back'  }}</a>
        <a class="btn btn-success center" href="{{ route('phone.create',$worker_id) }}">New phone</a>


    </h1>

    @if(Session::has('flash-message'))
        <div class="alert alert-success">{{ Session::get('flash-message') }}</div>
    @endif
</div>
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            @if($phones->count())
                <table class="table table-condensed table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>

                            <th>Phones</th>
                            <th class="text-right">Options</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($phones as $key => $phone)
                            <tr>

                                <td><a class="btn btn-success pull-right">{{ $key + 1  }}</a></td>

                                <td>
                                    @if($phone->first()->number )
                                        {{$phone->number}}
                                    @else
                                        {{'No phone'}}
                                    @endif
                                </td>

                                <td class="text-right">
                                    <a class="btn btn-xs btn-warning" href="{{ route('phone.edit', $phone->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>

                                    {!! Form::open(['route' => ['phone.destroy', $phone->id], 'method'=>'delete', 'style' => 'display: inline' ]) !!}
                                    <button type="submit" href="" class="btn btn-xs btn-danger delete-btn" onclick="if(!confirm('Are you sure delete this record?')){return false;};">Delete</button>
                                    {!! Form::close() !!}
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {!! $phones !!}
                @else
                    <h3 class="text-center alert alert-info">Empty!</h3>
                @endif
            </div>
        </div>

    @endsection
