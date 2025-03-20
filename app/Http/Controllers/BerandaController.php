<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produk;

class BerandaController extends Controller
{
    public function berandaBackend()
    {
        return view('backend.v_beranda.index', [
            'judul' => 'Halaman Beranda',
        ]);
    }

    public function index()
    {
        $produk = Produk::where('status', 1)->orderBy('updated_at', 'desc')->paginate(6);
        return view('v_beranda.index', [
<<<<<<< HEAD
            'judul' => 'Halaman Beranda',
            'produk' => $produk,
        ]);
=======
            'judul' => 'Halan Beranda',
            'produk' => $produk,
        ]); 
>>>>>>> 0ff4511393fdbefe9e9298e96cbf27f54186159f
    }
}
