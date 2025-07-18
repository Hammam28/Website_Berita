<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menu;
use App\Models\Page;

class MenuController extends Controller
{
    public function index(){
        //
        $menu = Menu::whereNull('parent_menu')
            ->with(['submenu'=> fn($q) => $q->orderBy('urutan_menu', 'asc')])
            ->orderBy('urutan_menu', 'asc')
            ->get();
        return view('backend.content.menu.list', compact('menu'));
    }

    public function order($idMenu, $idSwap){
        $menu = Menu::findOrFail($idMenu);
        $menuOrder = $menu->urutan_menu;

        $swap = Menu::findOrFail($idSwap);
        $swapOrder = $swap->urutan_menu;

        $menu->urutan_menu = $swapOrder;
        $swap->urutan_menu = $menuOrder;

        try{
            $menu->save();
            $swap->save();
            return redirect(route('menu.index'))->with('pesan', [
                'success', 'Urutan berhasil diubah']);
        }catch (\Exception $e){
            return redirect(route('menu.index'))->with('pesan', [
                'danger', 'Urutan gagal diubah']);
        }
    }

    public function tambah(){
        $page = Page::where('status_page', '=', 1)->get();
        $parent = Menu::whereNull('parent_menu')->where('status_menu', '=', 1)->get();
        return view('backend.content.menu.formTambah', compact('page', 'parent'));
    }

    public function prosesTambah(Request $request){
        $this->validate($request, [
            'nama_menu' => 'required',
            'jenis_menu' => 'required',
            'target_menu' => 'required'
        ]);

        $parent_menu = $request->parent_menu;
        if($parent_menu == null){
            $urut = $this->getUrutanMenu();
        }else{
            $urut = $this->getUrutanMenu($parent_menu);
        }

        $url_menu = "";
        if($request->jenis_menu == "url"){
            $url_menu = $request->link_url;
        }else{
            $url_menu = $request->link_page;
        }

        $menu = new Menu();
        $menu->nama_menu = $request->nama_menu;
        $menu->jenis_menu = $request->jenis_menu;
        $menu->url_menu = $url_menu;
        $menu->target_menu = $request->target_menu;
        $menu->urutan_menu = $urut;
        $menu->parent_menu = $parent_menu;

        try{
            $menu->save();
            return redirect(route('menu.index'))->with('pesan', [
                'success', 'Menu berhasil ditambah'
            ]);
        }catch (\Exception $e){
            return redirect(route('menu.index'))->with('pesan', [
                'danger', 'Menu gagal ditambah' . $e->getMessage()
            ]);
        }
    }

    public function hapus($id){
        $menu = Menu::findOrFail($id);

        try{
            $menu->delete();
            return redirect(route('menu.index'))->with('pesan', [
                'success', 'Menu berhasil dihapus'
            ]);
        }catch (\Exception $e){
            return redirect(route('menu.index'))->with('pesan', [
                'danger', 'Menu gagal dihapus' . $e->getMessage()
            ]);
        }
    }

    public function ubah($id){
        $page = Page::where('status_page', '=', 1)->get();
        $parent = Menu::whereNull('parent_menu')->where('status_menu', '=', 1)->get();
        $menu = Menu::findOrFail($id);
        return view('backend.content.menu.formUbah', compact('menu','page', 'parent'));
    }

    public function prosesUbah(Request $request){
        // Validasi
        $request->validate([
            'id_menu' => 'required',
            'nama_menu' => 'required',
            'jenis_menu' => 'required',
            'target_menu' => 'required'
        ]);

        $url_menu = "";
        if($request->jenis_menu == "url"){
            $url_menu = $request->link_url;
        }else{
            $url_menu = $request->link_page;
        }

        $menu = Menu::findOrFail($request->id_menu);
        $menu->nama_menu = $request->nama_menu;
        $menu->jenis_menu = $request->jenis_menu;
        $menu->url_menu = $url_menu;
        $menu->target_menu = $request->target_menu;
        $menu->parent_menu = $request->parent_menu;
        $menu->status_menu = $request->status_menu;

        try{
            $menu->save();
            return redirect(route('menu.index'))->with('pesan', [
                'success', 'Menu berhasil diubah'
            ]);
        }catch (\Exception $e){
            return redirect(route('menu.index'))->with('pesan', [
                'danger', 'Menu gagal diubah' . $e->getMessage()
            ]);
        }
    }


//    private function getUrutanMenu($parent = null){
//        if($parent == null){
//            #menu
//            $noUrutMenu = null;
//            $urut = Menu::select('urutan_menu')
//                ->whereNull('parent_menu')
//                ->orderBy('urutan_menu', 'desc')
//                ->first();
//            if($urut == null){
//                $noUrutMenu = 1;
//            }else{
//                $noUrutMenu = $urut->urutan_menu + 1;
//            }
//            return $noUrutMenu;
//
//        }else{
//            #submenu
//            $noUrutSubMenu = null;
//            $urutSub = Menu::select('urutan_menu')
//                ->whereNull('parent_menu')
//                ->where('parent_menu', '=', $parent)
//                ->orderBy('urutan_menu', 'desc')
//                ->first();
//            if($urutSub == null){
//                $noUrutSubMenu = 1;
//            }else{
//                $noUrutSubMenu = $urutSub->urutan_menu + 1;
//            }
//            return $noUrutSubMenu;
//        }
//    }

    private function getUrutanMenu($parent = null){
        if($parent == null){
            // Menu utama (tanpa parent)
            $lastOrder = Menu::whereNull('parent_menu')
                ->orderBy('urutan_menu', 'desc')
                ->first();
        } else {
            // Submenu (dengan parent)
            $lastOrder = Menu::where('parent_menu', '=', $parent)
                ->orderBy('urutan_menu', 'desc')
                ->first();
        }

        return $lastOrder ? $lastOrder->urutan_menu + 1 : 1;
    }
}
