@extends('frontend/layout/main')
@section('content')

<section class="py-5 bg-light">
    <div class="container px-5">
        <div class="row gx-5">
            <div class="col-xl-12 custom-carousel-container">
                <h2 class="fw-bolder fs-5 mb-4">Paling Banyak Dilihat</h2>

                <div id="mostViewsCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                    <div class="carousel-inner">
                        @foreach($mostViews as $index => $mv)
                            <div class="carousel-item @if($index === 0) active @endif">
                                <a href="{{ route('home.detailBerita', $mv->id_berita) }}" class="carousel-link">
                                    <div class="card border-0">
                                        <div class="carousel-img-wrapper">
                                            <img
                                                src="{{ asset('storage/berita/' . $mv->gambar_berita) }}"
                                                alt="{{ $mv->judul_berita }}"
                                                onerror="this.onerror=null;this.src='{{ asset('assets-fe/assets/img/default.jpg') }}';" />

                                            <div class="carousel-caption-overlay">
                                                <div class="kategori">{{ $mv->kategori->nama_kategori }}</div>
                                                <h3>{{ $mv->judul_berita }}</h3>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>

                    <!-- Tombol Navigasi -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#mostViewsCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Sebelumnya</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#mostViewsCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Berikutnya</span>
                    </button>
                </div>



                <div class="text-end mt-4">
                    <a class="text-decoration-none" href="{{ route('home.berita') }}">
                        Semua Berita
                        <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Berita Terbaru Section -->
<section class="py-5">
    <div class="container px-5">
        <h2 class="fw-bolder fs-5 mb-4">Berita Terbaru</h2>
        <div class="row gx-5">

            @foreach($berita as $row)
                <div class="col-md-6 col-lg-3 mb-5">
                    <div class="card h-100 shadow border-0 berita-card">
                        <div class="berita-img-wrapper">
                            <img class="card-img-top"
                                 src="{{ asset('storage/berita/' . $row->gambar_berita) }}"
                                 alt="{{ $row->judul_berita }}"
                                 onerror="this.onerror=null;this.src='{{ asset('assets-fe/assets/img/default.jpg') }}';" />
                        </div>

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
