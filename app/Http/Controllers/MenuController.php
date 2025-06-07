<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menu;

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
}
