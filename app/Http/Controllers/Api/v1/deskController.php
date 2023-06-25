<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Requests\deskStoreRequest;
use App\Http\Resources\deskResource;
use App\Models\Desks;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class deskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return deskResource::collection(Desks::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(deskStoreRequest $request)
    {
        $createDesk = Desks::create($request->validated());
        return new deskResource($createDesk);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Desks $desk)
    {
        return new deskResource($desk);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(deskStoreRequest $request, Desks $desk)
    {
        $desk->update($request->validated());
        return new deskResource($desk);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Desks $desk)
    {
        $desk->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}