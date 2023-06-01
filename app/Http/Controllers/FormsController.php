<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use Illuminate\Database\QueryException;


class FormsController extends Controller

{

    //
    public function index(Request $request) {

         $validation = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'location' => 'required',
            'description' => 'required'
        ]);

    try {
        $teacher = Teacher::create($validation);
    } catch (QueryException $e) {
        $errorCode = $e->errorInfo[1];
        if ($errorCode == 1062) {
            // Duplicate entry error
            $errorMessage = 'This account already exists already exists.';
            return view('/form', ['errorMessage' => $errorMessage]);
        }
        // Other database error
        $errorMessage = 'An error occurred while saving the teacher.';
        return view('/form', ['errorMessage' => $errorMessage]);
    }

    return view('/form', ['name' => $request->name]);
}
}
