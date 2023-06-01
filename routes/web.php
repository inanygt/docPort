<?php

use App\Http\Controllers\MapsController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TeachersController;
use App\Http\Controllers\FormsController;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use App\Models\Teacher;




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

// Route::get('/', function () {

//     $teachers = Teacher::all();

//     return view('welcome', ['teachers' => $teachers] );
// });

// Route::get('/', [TeachersController::class, 'index']);


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


// Route::get('/map', [MapsController::class, 'index']);

Route::get('/', function() {

    $teachers = Teacher::all();


     $initialMarkers = [
            [
                'position' => [
                    'lat' => 28.625485,
                    'lng' => 79.821091
                ],
                'draggable' => true
            ],
        ];
        return view('welcome', compact('initialMarkers', 'teachers'));
});

Route::get('/form', [FormsController::class, 'index'])->name('form');

Route::post('/form',function(Request $request){

        $validation = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'location' => 'required',
            'description' => 'required'
        ]);

        $teacher = Teacher::create($validation);


        // This takes the name of the user and displays it in the view after submission. (welcome.blade)
        return view ('welcome', ['name' => $request->name]);

});
