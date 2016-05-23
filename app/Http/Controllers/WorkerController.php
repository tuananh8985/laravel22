<?php

namespace App\Http\Controllers;
use DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\WorkEditRequest;
use App\Http\Requests\WorkCreateRequest;
use App\Http\Requests\SearchRequest;
use \App\Worker;
use \App\Phone;
use JsValidator;
use Validator;
use Dingo\Api\Routing\Helpers;


// use \App\Phone;

class WorkerController extends Controller
{
    // use Helpers;
    public function index()
    {
        $filters = \Input::get('filter');
                if ($filters == \App\Phone::TELECOM_VIETTEL) {
                    $keys = ['097%', '096%', '098%'];
                } elseif ($filters == \App\Phone::TELECOM_VINA) {
                    $keys = ['094%', '091%', '0123%'];
                } elseif ($filters == \App\Phone::TELECOM_MOBI) {
                    $keys = ['090%', '093%', '0121%'];
                } else {
                    $keys = [];
                }

                $filters = \Input::get('gender');
                if ($filters == \App\Worker::male) {
                    $keys1 = 'male';
                } elseif ($filters == \App\Worker::female) {
                    $keys1 = 'female';
                } else {
                    $keys1 = [];
                }


        // $keys:Select SDT
        // $keys:Select gender
                if (!empty($keys)) {
                    if(!empty($keys1)){
                        $workers = Worker::whereHas('phones', function ($query) use($keys) {
                            $query->where(function($query) use ( $keys ) {
                                foreach ($keys as $key => $value) {
                                    $query->orwhere('number', 'like', '%'.$value . '%');
                                }
                            });
                        })->where('gender',$keys1)->paginate(10);
                    }
                    else{
                        $workers = Worker::whereHas('phones', function ($query) use($keys) {
                            $query->where(function($query) use ( $keys ) {
                                foreach ($keys as $key => $value) {
                                    $query->orwhere('number', 'like', '%'.$value . '%');
                                }
                            });
                        })->paginate(10);

                    }

                } else {
                    if(!empty($keys1)){
                        $workers = \App\Worker::where('gender',$keys1)->paginate(10);
                    }else{
                        $workers = \App\Worker::paginate(10);

                    }

                }
        return view('worker.list')->with('workers', $workers);

    }
    public function create()
    {
        return view('worker.add');
    }

    public function store(WorkCreateRequest $request)
    {
        $worker              = new \App\Worker();
        $worker->name        = $request->get('name');
        $worker->birth_date  = $request->get('birth_date');
        $worker->gender      = $request->get('gender');
        $worker->description = $request->get('description');
        $worker->save();

        $phone =new \App\Phone();
        $phone->number =$request->get('number');
        $phone->worker_id = $worker->id;
        $phone->save();
        \Session::flash('flash-message', trans('crud.create_success', ['model'=> 'Worker']));
        return redirect()->route('worker-list');

    }


    public function show($id)
    // id của bảng worker
    {
        $worker = \App\Worker::find($id);
        return view('worker.show')->with('worker',$worker);
    }




    public function edit($id)
    // id của bảng worker
    {
        // Thêm

        $worker = \App\Worker::findOrFail($id);

        // $phones = \App\Phone::where('worker_id',$id)->get();
        return view('worker.edit',compact('worker'));
        //with('phones',$phones);
        // with([
        //     'worker'=>$worker,
        //     'phones'=>$phones,
        // ]);
    }


    public function update(WorkEditRequest $request, $id)
    {
        $worker = Worker::findOrFail($id);

        $worker->name = $request->input("name");
        $worker->birth_date = $request->input("birth_date");
        $worker->gender = $request->input("gender");
        $worker->birth_date = $request->input("birth_date");
        $worker->description = $request->input("description");
        $worker->save();

        return redirect()->route('worker-list')->with('flash-message', 'Item updated successfully.');




    }



    public function destroy($id)
    // id của bảng worker
    {
        //Thực hiện thao tác xóa người dùng gồm thông tin worker và phone
        $worker = \App\Worker::find($id);
        //Xóa phone
        $worker->phones()->delete();
        // Xóa tiếp bảng worker
        $worker->delete();


        return redirect()->route('worker-list')->with('flash-message', 'Item deleted successfully.');
    }


    public function skills($id)
    {
        $worker = \App\Worker::find($id);

        $skills = \App\Skill::all();
        // return view('worker.skills')->with('skills', $skills)->with('worker', $worker);
        return view('worker.skills',compact('worker','skills'));

    }


    public function SkillsUpdate($id, Request $request)
    {
        $this->validate($request, ['skills' => 'array|exists:skills,id']);

        $worker = \App\Worker::find($id);
        $worker->skills()->sync($request->get('skills'));
        return redirect()->route('worker.view', $worker->id);
    }

}
