<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MapsController extends Controller
{
    //
    public function index()
    {
        $initialMarkers = [
            // [
            //     'position' => [
            //         'lat' => 28.625485,
            //         'lng' => 79.821091
            //     ],
            //     'draggable' => true
            // ],
        ];
        return view('leaflet/map', compact('initialMarkers'));
    }
}
