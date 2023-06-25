<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Requests\taskStoreRequest;
use App\Http\Resources\taskResource;
use App\Models\Tasks;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class taskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(taskStoreRequest $request)
    {
        $createTask = Tasks::create($request->validated());
        return new taskResource($createTask);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return taskResource::collection(Tasks::where('card_id', '=', $id)->get());
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
    public function destroy(Tasks $task)
    {
        $task->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
