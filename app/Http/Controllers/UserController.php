<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Barryvdh\DomPDF\Facade\Pdf;

class UserController extends Controller
{
    public function index(){
        $user = User::all();
        return view('backend.content.user.list', compact('user'));
    }

    public function tambah(){
        return view('backend.content.user.formTambah');
    }

    public function prosesTambah(Request $request){
        $this->validate($request,[
            'name' => 'required',
            'email' => 'required'
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt('1234567890');

        try {
            $user->save();
            return redirect(route('user.index'))->with('pesan', ['success', 'Data berhasil ditambahkan']);
        } catch (\Exception $e) {
            return redirect(route('user.index'))->with('pesan', [
                'danger',
                'Data gagal ditambahkan: ' . $e->getMessage()
            ]);
        }

        //        try {
//            $kategori->save();
//            return redirect(route('kategori.index'))->with('pesan', ['success', 'Data berhasil ditambahkan',]);
//        }catch (\Exception $e){
//            return redirect(route('kategori.index'))->with('pesan', ['danger', 'Data gagal ditambahkan',]);
//        }

    }

    public function ubah($id){
        $user = User::findOrFail($id);
        return view('backend.content.user.formUbah', compact('user'));
    }

    public function prosesUbah(Request $request){
        $this->validate($request, [
            'id' => 'required',
            'name' => 'required',
            'email' => 'required'
        ]);

        $user = User::findOrFail($request->id);
        $user->name = $request->name;
        $user->email = $request->email;
        try {
            $user->save();
            return redirect(route('user.index'))->with('pesan', [
                'success',
                'Data berhasil diubah']);
        } catch (\Exception $e) {
            return redirect(route('user.index'))->with('pesan', [
                'danger',
                'Data gagal diubah: ' . $e->getMessage()
            ]);
        }
    }

    public function hapus($id){
        $user = User::findOrFail($id);
        try {
            $user->delete();
            return redirect(route('user.index'))->with('pesan', ['success', 'Data berhasil dihapus']);
        } catch (\Exception $e) {
            return redirect(route('user.index'))->with('pesan', [
                'danger',
                'Data gagal dihapus : ' . $e->getMessage()
            ]);
        }
    }

    public function exportPdf(){
        $user = User::all();
        $pdf = Pdf::loadView('backend.content.user.export', compact('kategori'));
        return $pdf->download('Data User.pdf');
    }
}
