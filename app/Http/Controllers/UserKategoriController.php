<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\Request;
use App\Models\Kategori;
use App\Models\Berita;

class UserKategoriController extends Controller
{
    //
//    public function show($slug){
//        $kategori = Kategori::where('slug', $slug)->firstOrFail();
//        $berita = Berita::where('id_kategori', $kategori->id_kategori)->latest()->paginate(10);
//
//        $menu = $this->getMenu();
//
//        return view('frontend.kategori.show', compact('kategori', 'berita', 'menu'));
//    }

    public function show(Request $request, $slug)
    {
        $kategori = Kategori::where('slug', $slug)->firstOrFail();

        $query = Berita::where('id_kategori', $kategori->id_kategori);

        if ($request->has('q') && $request->q != '') {
            $query->where('judul_berita', 'like', '%' . $request->q . '%');
        }

        $berita = $query->latest()->paginate(10)->withQueryString(); // penting untuk pagination tetap bawa query

        $menu = $this->getMenu();

        return view('frontend.kategori.show', compact('kategori', 'berita', 'menu'));
    }

    private function getMenu(){
        //
        $menu = Menu::whereNull('parent_menu')
            ->with(['submenu'=> fn($q) => $q
                ->where('status_menu', '=', 1)
                ->orderBy('urutan_menu', 'asc')])

            ->where('status_menu', '=', 1)
            ->orderBy('urutan_menu', 'asc')
            ->get();

        $dataMenu = [];
        foreach ($menu as $m){
            $jenis_menu = $m->jenis_menu;
            $urlMenu = "";

            if ($jenis_menu == "url"){
                $urlMenu = $m->url_menu;
            }else{
                $urlMenu = route('home.detailPage', $m->url_menu);
            }

            //item
            $dItemMenu = [];
            foreach ($m->submenu as $im){
                $jenisItemMenu = $im->jenis_menu;
                $urlItemMenu = "";

                if ($jenisItemMenu == "url"){
                    $urlItemMenu = $im->url_menu;
                }else{
                    $urlItemMenu = route('home.detailPage', $im->url_menu);
                }

                $dItemMenu[] = [
                    'sub_menu_nama' => $im->nama_menu,
                    'sub_menu_target' => $im->target_menu,
                    'sub_menu_url' => $urlItemMenu
                ];
            }

            $dataMenu[] = [
                'menu' => $m->nama_menu,
                'target' => $m->target_menu,
                'url' => $urlMenu,
                'itemMenu' => $dItemMenu,
            ];
        }

        return $dataMenu;
    }

}
