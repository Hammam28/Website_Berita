<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function index(){
        //halaman awal
        return view('frontend.layout.main');
    }

    public function detailBerita($id){
        //halaman berita
    }

    public function detailPage($id){
        //halaman page
    }

    public function semuaBerita(){
        //semua berita
    }
}
