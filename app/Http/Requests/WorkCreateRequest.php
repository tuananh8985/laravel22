<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class WorkCreateRequest extends Request
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
             'name'       => 'required|alpha|max:50',
             'gender'     => 'required|in:male,female',
             'birth_date' => 'required|date_format:Y-m-d',
             'description'=> 'required|max:500',
             'number'       => 'required|unique:phones|numeric|digits_between:8,10',
         ];
     }
     public function messages(){
         return[
             'name.required'       => 'TA.Please input name',
             'name.alpha'       => 'TA.Please input is alpha',
             'gender.required'     => 'TA.Please input gender',
             'birth_date.required' => 'TA.Please input birth date',
             'description.required'=>'TA.Please input description',
             'description.max'=>'TA.Please input description < 500',
             'number.required'       => 'TA.Please input number',
             'number.unique'       => 'TA.Please input number others',
             'number.numeric'       => 'TA.Please input number is numeric',
             'number.digits_between'       => 'TA.Please input number min is 8',
         ];
     }
}
