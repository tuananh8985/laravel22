@extends('layouts/default')

@section('header')
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> Skills
        </h1>

        @if(Session::has('flash-message'))
            <div class="alert alert-success">{{ Session::get('flash-message') }}</div>
        @endif

    </div>
@endsection


@section('content')
{!! Form::open(['route' => ['worker-update-skills', $worker->id]]) !!}

<table>
    <tr>
        <td>Name</td>
        <td>{{ $worker->name }}</td>
    </tr>
    <tr>
        <td>Skills</td>
        <td>
            <ul>
                @foreach($skills as $skill)
                <?php $checked = $worker->skills->where('id', $skill->id)->count() > 0; ?>
                <li> {!! Form::checkbox('skills[]', $skill->id, $checked) !!} {{ $skill->name }} </li>
                @endforeach
            </ul>
        </td>
    </tr>
</table>
{!! Form::submit('Save') !!}
{!! Html::linkRoute('worker.view', 'Cancel',['id' => $worker->id]) !!}
{!! Form::close() !!}
@endsection
