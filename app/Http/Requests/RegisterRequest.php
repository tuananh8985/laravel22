<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class RegisterRequest extends Request
{
    /**
    * Determine if the user is authorized to make this request.
    *
    * @return bool
    */
    public function authorize()
    {
        return true;
    }

    /**
    * Get the validation rules that apply to the request.
    *
    * @return array
    */
    public function rules()
    {
        return [
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'password'=>'required'
        ];
    }
    public function messages(){
        return [
            'name.required'=>'Yeu cau nhap ten',
            'email.required'=>'Yeu cau nhap email',
            'email.email'=>'Email này không đúng chuẩn',
            'email.unique'=>'Email nay da ton tai',
            'password.required'=>'Yeu cau nhap password',
        ];

    }
}
