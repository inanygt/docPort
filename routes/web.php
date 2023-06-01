<?php

use App\Http\Controllers\MapsController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TeachersController;
use App\Http\Controllers\FormsController;
use App\Models\Teacher;
use Illuminate\Http\Request;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/welcome', function () {
    return view('welcome');
})->name('welcome');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/teachers', [TeachersController::class, 'index'])->name('teachers.index');

// Route::get('/map', [MapsController::class, 'index']);

Route::get('/', function() {
     $initialMarkers = [
            [
                'position' => [
                    'lat' => 28.625485,
                    'lng' => 79.821091
                ],
                'draggable' => true
            ],
        ];
        return view('leaflet/map', compact('initialMarkers'));
});

Route::get('/form', [FormsController::class, 'index'])->name('form');

Route::post('/form',function(Request $request){
    // dd($request);

    $validation = $request->validate([
        'name' => 'required',
        'email' => 'required|email',
        'location' => 'required',
        'description' => 'required'
    ]);

    $teacher = Teacher::create($validation);

    // $teacher = new Teacher();
    // $teacher->name = $request->name;
    // $teacher->description = $request->description;
    // $teacher->location = $request->location;
    // $teacher->save();

    // return view ('welcome', ['name' => $request->name]);
    return redirect('/');
});
