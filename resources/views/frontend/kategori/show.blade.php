@extends('frontend/layout/main')
@section('content')

    <section class="py-5">
        <div class="container px-5">
            <h2 class="fw-bolder fs-4 mb-4">Berita {{ $kategori->nama_kategori }}</h2>

            <!-- Fitur Pencarian Berita -->
            <form method="GET" action="{{ route('kategori.show', $kategori->slug) }}" class="mb-4">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Cari berita..." value="{{ request('q') }}">
                    <button class="btn btn-primary" type="submit">Cari</button>
                </div>
            </form>

            @if($berita->count() > 0)
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

                <!-- Pagination -->
                <div class="mt-4 d-flex justify-content-end">
                    {{ $berita->links() }}
                </div>
            @else
                <p class="text-muted">Tidak ada berita di kategori ini.</p>
            @endif

            <div class="text-end mb-5 mb-xl-0">
                <a class="text-decoration-none" href="{{ route('home.berita') }}">
                    Semua berita
                    <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </div>
    </section>


@endsection
