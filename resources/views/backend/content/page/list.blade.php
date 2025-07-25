@extends('backend/layout/main')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <h1 class="h3 mb-2 text-gray-800">List Page</h1>
            </div>
            <div class="col-lg-6 text-right">
                <a href="{{ route('page.tambah') }}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Tambah</a>
        </div>

        @if(session()->has('pesan'))
            <div class="alert alert-{{session()->get('pesan')[0]}}">
                {{session()->get('pesan')[1]}}
            </div>
        @endif

        <div class="card shadow mb-4" style="width: 100%">
         <div class="card-body">
             <div class="table-responsive">
                 <table class="table table-bordered"  id="dataTable" width="100%" cellspacing="0">
                     <thead>
                         <tr>
                             <th>No</th>
                             <th>Judul Page</th>
                             <th>Status Page</th>
                         </tr>
                     </thead>
                     <tbody>
                        @php $no = 1; @endphp
                        @foreach($page as $row)
                            <tr>
                                <td>{{$no++}}</td>
                                <td>{{$row->judul_page}}</td>
                                <td>{{($row->status_page == 1) ? "Aktif" : "Tidak Aktif"}}</td>
                                <td>
                                    <a href="{{ route('page.ubah', $row->id_page) }}" class="btn btn-sm btn-warning"><i class="fa fa-edit"></i> Ubah</a>
                                    <a href="{{ route('page.hapus', $row->id_page) }}" onclick="return confirm('Anda yakin?')" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> Hapus</a>
                                </td>
                            </tr>
                        @endforeach
                     </tbody>
                 </table>
             </div>
         </div>
         </div>
    </div>
@endsection
