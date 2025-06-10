<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Models\Kategori;
use Illuminate\Support\Facades\Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Bagikan semua kategori ke semua view
        $categories = Kategori::all();
        View::share('categories', $categories);


        View::composer('backend.layout.main', function ($view) {
            if (Auth::guard('user')->check()) {
                $view->with('user', Auth::guard('user')->user());
            }
        });
    }

}
