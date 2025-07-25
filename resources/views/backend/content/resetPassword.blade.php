@extends('backend/layout/main')
@section('content')
    <div class="container-fluid">
        <h1 class="h3 mb-2 text-gray-800">Reset Password</h1>

        @if(session()->has('pesan'))
            <div class="alert alert-{{session()->get('pesan')[0]}}">
                {{session()->get('pesan')[1]}}
            </div>
        @endif

        <div class="card shadow mb-4">
            <div class="card-body">
                <form action="{{route('dashboard.prosesResetPassword')}}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">Password Lama</label>
                        <input type="text" name="old_password" value="{{old('old_password')}}" class="form-control @error('old_password') is-invalid @enderror">
                        @error('old_password')
                        <span style="color: darkred; font-weight: 600; font-size: 9pt">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password Baru</label>
                        <input type="text" name="new_password" value="{{old('new_password')}}" class="form-control @error('new_password') is-invalid @enderror">
                        @error('new_password')
                        <span style="color: darkred; font-weight: 600; font-size: 9pt">{{$message}}</span>
                        @enderror
                    </div>

{{--                    <div class="mb-3">--}}
{{--                        <label class="form-label">Konfirmasi Password Baru</label>--}}
{{--                        <input type="text" name="c_new_password" value="{{old('c_new_password')}}" class="form-control @error('c_new_password') is-invalid @enderror">--}}
{{--                        @error('c_new_password')--}}
{{--                        <span style="color: darkred; font-weight: 600; font-size: 9pt">{{$message}}</span>--}}
{{--                        @enderror--}}
{{--                    </div>--}}

                    <div class="mb-3">
                        <label class="form-label">Konfirmasi Password Baru</label>
                        <input type="text" name="new_password_confirmation" value="{{old('new_password_confirmation')}}" class="form-control @error('new_password_confirmation') is-invalid @enderror">
                        @error('new_password_confirmation')
                        <span style="color: darkred; font-weight: 600; font-size: 9pt">{{$message}}</span>
                        @enderror
                    </div>

                    <button type="submit" class="btn btn-primary">Konfirmasi</button>
                    <a href="{{route('dashboard.index')}}" class="btn btn-secondary">Kembali</a>
                </form>
            </div>
        </div>
    </div>
@endsection
