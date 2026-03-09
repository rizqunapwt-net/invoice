<?php

namespace App\Http\Controllers;
use App\Paket;
use App\Testimoni;
use Sitemap;
use Illuminate\Http\Request;

class SitemapController extends Controller
{
    public function index()
    {
        $paket = Paket::all();
        foreach ($paket as $pk) {
            Sitemap::addTag(url($pk->id), $pk->updated_at, htmlspecialchars($pk->deskripsi),$pk->harga,'daily', '0.8');
        }
        $testimoni=Testimoni::all();
        foreach ($testimoni as $testi) {
            Sitemap::addTag(url($testi->id), $testi->updated_at, htmlspecialchars($testi->testimoni),'daily', '0.8');
        }
        return Sitemap::render('paket','testimoni');
    }
}
