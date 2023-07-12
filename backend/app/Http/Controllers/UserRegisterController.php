<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserRegister;
use Illuminate\Support\Facades\Log;
use App\Http\Requests\StoreUserRegisterRequest;

class UserRegisterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // データの取得や処理を行う
        // $users = User::all();

        // データをJSON形式で返す
        return response()->json($request);
            
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUserRegisterRequest $request)
    {
        // 受け取ったユーザーデータをデータベースに保存するなどの処理を行う
        Log::info($request);
        UserRegister::create([
            'userId' => $request['userId'],
            'name' => $request['name'],
            'email' => $request['email'],
            'created_at' => now(),
        ]);

        return response()->json(['message' => 'User created successfully']);

        // 必要に応じてレスポンスを返す
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
