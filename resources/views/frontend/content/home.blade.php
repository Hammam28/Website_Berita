@extends('frontend/layout/main')
@section('content')
<section class="py-5 bg-light">
    <div class="container px-5">
        <div class="row gx-5">
            <div class="col-xl-12">
                <h2 class="fw-bolder fs-5 mb-4">Most Views</h2>

                <!-- Most View -->
                @foreach($mostViews as $mv)
                    <div class="mb-4">
                        <div class="small text-muted">{{$mv->kategori->nama_kategori}}</div>
                        <a class="link-dark" href="{{route('home.detailBerita', $mv->id_berita)}}"><h3>{{$mv->judul_berita}}</h3></a>
                    </div>
                @endforeach

                <div class="text-end mb-5 mb-xl-0">
                    <a class="text-decoration-none" href="{{route('home.berita')}}">
                        Semua Berita
                        <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog preview section-->
<section class="py-5">
    <div class="container px-5">
        <h2 class="fw-bolder fs-5 mb-4">Berita Terbaru</h2>
        <div class="row gx-5">

            @foreach($berita as $row)
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="card h-100 shadow border-0">
                        <img class="card-img-top"
                             src="{{ asset('storage/berita/' . $row->gambar_berita) }}"
                             alt="{{ $row->judul_berita }}"
                             onerror="this.onerror=null;this.src='{{ asset('assets-fe/assets/img/default.jpg') }}';" />

                        <div class="card-body p-4">
                            <div class="badge bg-primary bg-gradient rounded-pill mb-2">
                                {{ $row->kategori->nama_kategori ?? 'Tanpa Kategori' }}
                            </div>

                            <a class="text-decoration-none link-dark stretched-link"
                               href="{{ route('home.detailBerita', $row->id_berita) }}">
                                <div class="h5 card-title mb-3">{{ $row->judul_berita }}</div>
                            </a>

                            <p class="card-text mb-0">
                                {{ \Illuminate\Support\Str::limit(strip_tags($row->isi_berita), 200, '...') }}
                            </p>
                        </div>

                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                            <div class="d-flex align-items-end justify-content-between">
                                <div class="d-flex align-items-center">
                                    <div class="small">
                                        <div class="fw-bold">Admin</div>
                                        <div class="text-muted">{{ \Carbon\Carbon::parse($row->created_at)->format('d M Y') }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
        <div class="text-end mb-5 mb-xl-0">
            <a class="text-decoration-none" href="{{route('home.berita')}}">
                Semua berita
                <i class="bi bi-arrow-right"></i>
            </a>
        </div>
    </div>
</section>
@endsection
