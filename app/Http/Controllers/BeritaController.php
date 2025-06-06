<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Kategori;

class BeritaController extends Controller
{
    public function index()
    {
        $berita = Berita::with('kategori')->get();
        return view('backend.content.berita.list', compact('berita'));
    }

    public function tambah()
    {
        $kategori = Kategori::all();
        return view('backend.content.berita.formTambah', compact('kategori'));
    }

    public function prosesTambah(Request $request)
    {
        $this->validate($request, [
            'judul_berita' => 'required',
            'isi_berita' => 'required',
            'id_kategori' => 'required',
            'gambar_berita' => 'required|image'
        ]);

        $request->file('gambar_berita')->store('public/berita');
        $gambar_berita = $request->file('gambar_berita')->hashName();

        $berita = new Berita();
        $berita->judul_berita = $request->judul_berita;
        $berita->isi_berita = $request->isi_berita;
        $berita->id_kategori = $request->id_kategori;

        $berita->gambar_berita = $gambar_berita;

        try {
            $berita->save();
            return redirect(route('berita.index'))->with('pesan', [
                'success',
                'Data berhasil ditambahkan']);
        } catch (\Exception $e) {
            return redirect(route('berita.index'))->with('pesan', [
                'danger',
                'Data gagal ditambahkan: ' . $e->getMessage()
            ]);
        }
    }

    public function ubah($id){
        $berita = Berita::findOrfail($id);
        $kategori = Kategori::all();
        return view('backend.content.berita.formUbah', compact('berita', 'kategori'));
    }

    public function prosesUbah(Request $request){
        $this->validate($request, [
            'judul_berita' => 'required',
            'isi_berita' => 'required',
            'id_kategori' => 'required',
        ]);

        $berita = Berita::findOrfail($request->id_berita);
        $berita->judul_berita = $request->judul_berita;
        $berita->isi_berita = $request->isi_berita;
        $berita->id_kategori = $request->id_kategori;

        if($request->hasFile('gambar_berita')){
            $request->file('gambar_berita')->store('public/berita');
            $gambar_berita = $request->file('gambar_berita')->hashName();
            $berita->gambar_berita = $gambar_berita;
        }

        try {
            $berita->save();
            return redirect(route('berita.index'))->with('pesan', [
                'success',
                'Data berhasil diubah']);
        } catch (\Exception $e) {
            return redirect(route('berita.index'))->with('pesan', [
                'danger',
                'Data gagal diubah: ' . $e->getMessage()
            ]);
        }
    }

    public function hapus($id)
    {
        $berita = Berita::findOrfail($id);

        try {
            $berita->delete();
            return redirect(route('berita.index'))->with('pesan', [
                'success',
                'Data berhasil dihapus']);
        } catch (\Exception $e) {
            return redirect(route('berita.index'))->with('pesan', [
                'danger',
                'Data gagal dihapus: ' . $e->getMessage()
            ]);
        }
    }
}
