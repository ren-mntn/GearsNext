<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUserRegisterRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'user_id'=>['required', 'string', 'max:50','unique:user_registers'],
            'name'=>['required', 'string', 'max:20'],
            'email'=>['required', 'email', 'max:255','unique:user_registers'],

        ];
    }
}