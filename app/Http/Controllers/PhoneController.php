<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\PhoneRequest;

// use \App\Phone;
// use \App\Worker;

class PhoneController extends Controller
{


    public function index($id)
    {
        // Biến id truyền vào là id của worker.
        $phones = \App\Phone::where('worker_id',$id)->paginate();
        // echo "<pre>";
        // print_r($phones);die();
        // echo "</pre>";
        return view('phone.list')->with('phones', $phones)->with('worker_id',$id);
    }


    public function create($id)
    {

        // dd($id );
        return view('phone.add')->with('worker_id', $id);
    }
    public function store(PhoneRequest $request)
    {

        $phone              = new \App\Phone();

        $phone->number        = $request->get('number');
        $phone->worker_id     = $request->get('worker_id');

        $phone->save();
        \Session::flash('flash-message', 'Phones has been created successful!');
        return redirect()->route('phone.index',$phone->worker_id);
    }

    public function edit($id)
    {

        $phones = \App\Phone::where('id',$id)->get();
        return view('phone.edit', compact('phones','workers'));


    }

    public function update(PhoneRequest $request, $id)
    {
        $phones = \App\Phone::findOrFail($id);

        $phones->number = $request->input("number");
        $phones->save();

        return redirect()->route('phone.index',$phones->worker_id)->with('flash-message', 'Item updated successfully.');
    }

    public function destroy($id)
    {
        $phones = \App\Phone::find($id);
        $phones->delete();
        return redirect()->route('phone.index',$phones->worker_id)->with('flash-message', 'Item deleted successfully.');
    }
    public function show($id)
    {
        //
    }

}
