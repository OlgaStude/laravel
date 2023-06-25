<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Requests\cardstoreRequest;
use App\Http\Resources\cardResource;
use App\Http\Resources\listsResource;
use App\Models\Cards;
use App\Models\Lists;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class cardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Cards::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(cardstoreRequest $request)
    {
        $createCard = Cards::create($request->validated());
        return new listsResource($createCard);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return cardResource::collection(Cards::where('list_id', '=', $id)->get());
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(cardstoreRequest $request, Cards $card)
    {
        $card->update($request->validated());
        return new listsResource($card);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cards $card)
    {
        $card->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
