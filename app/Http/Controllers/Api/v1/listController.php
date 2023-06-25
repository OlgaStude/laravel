<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Requests\listStoreRequest;
use App\Http\Resources\cardResource;
use App\Http\Resources\listsResource;
use App\Models\Cards;
use App\Models\Lists;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class listController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Lists::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(listStoreRequest $request)
    {
        $createList = Lists::create($request->validated());
        return new listsResource($createList);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return listsResource::collection(Lists::where('desks_id', '=', $id)->get());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(listStoreRequest $request, Lists $list)
    {
        $list->update($request->validated());
        return new listsResource($list);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lists $list)
    {
        $list->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }

}
