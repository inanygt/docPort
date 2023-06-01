<?php

namespace App\Http\Controllers;

use App\DataTables\TeachersDataTable;
use Illuminate\Http\Request;
use App\Models\Teacher;


class TeachersController extends Controller
{
    //  public function index(TeachersDataTable $dataTable)
    // {
    //     return $dataTable->render('teachers.index');
    // }

    public function index() {
        $teachers = Teacher::all();
        dd($teachers);

        return view('datatable', ['teachers' => $teachers]);
    }
}
