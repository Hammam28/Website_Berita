<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Hash;

class DashboardController extends Controller
{
    public function index(){
        return view('backend.content.dashboard');
    }

    public function profile(){
         return view('backend.content.profile');
    }

    public function resetPassword(){
        return view('backend.content.resetPassword');
    }

    public function prosesResetPassword(Request $request){
        $this->validate($request,[
            'old_password' => 'required',
            'new_password' => 'required|min:8|confirmed',
//            'c_new_password' => 'required_with:new_password|same:new_password|min:8'
        ]);

        $old_password = $request->old_password;
        $new_password = $request->new_password;

        $id = Auth::guard('user')->user()->id;
        $user = User::findOrFail($id);

        if(Hash::check($old_password, $user->password)){
            $user->password = bcrypt($new_password);

            try {
                $user->save();
//                return redirect(route('dashboard.resetPassword'))->with('pesan', ['success', 'Password berhasil diubah']);
                return redirect()->back()->with('pesan', ['success', 'Password berhasil diubah']);
            }catch (\Exception $e){
//                return redirect(route('dashboard.resetPassword'))->with('pesan', ['danger', 'Password gagal diubah']);
                return redirect()->back()->with('pesan', ['danger', 'Password gagal diubah']);
            }
        }else{
//            return redirect(route('dashboard.resetPassword'))->with('pesan', ['danger', 'Password Lama Salah']);
            return redirect()->back()->with('pesan', ['danger', 'Password Lama Salah']);
        }
    }
}
