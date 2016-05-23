<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class PhoneRequest extends Request
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
             'number'       => 'required|unique:phones|numeric|digits_between:8,10',
         ];
     }
     public function messages(){
         return[
             'number.required'       => 'TA.Please input number',
             'number.unique'       => 'TA.Please input number others',
             'number.numeric'       => 'TA.Please input number is numeric',
             'number.digits_between'       => 'TA.Please input number min is 8',
         ];
     }

}
