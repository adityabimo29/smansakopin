<?php
defined('BASEPATH') OR exit('No direct script access allowed');
ob_start();
session_start();
// Load our autoloader & database
require_once BASEPATH.'database.php';

//Load helpers
require_once BASEPATH.'helper_base.php';
require_once BASEPATH.'helper_paging.php';
require_once BASEPATH.'helper_csrf.php';
require_once BASEPATH.'z_setting.php';
require_once BASEPATH.'stat.php';
require_once BASEPATH.'fungsi_umum.php';
require_once BASEPATH.'fungsi_thumb.php';
require_once BASEPATH.'stat.php';
require_once BASEPATH.'ImgCompressor.php';
require_once BASEPATH.'helper_email.php';


// Security for Form POST
$csrf = new CSRF();

// Error Display
$whoops = new \Whoops\Run;
$whoops->pushHandler(new \Whoops\Handler\PrettyPageHandler);
//$whoops->register();

$filename = __DIR__ . preg_replace('#(\?.*)$#', '', $_SERVER['REQUEST_URI']);
if (php_sapi_name() === 'cli-server' && is_file($filename)) {
    return false;
}

// Create Router instance
$router = new \Bramus\Router\Router();

// Before Router Middleware
$router->before('GET', '/.*', function () {
    header('X-Powered-By: bramus/router');
});

// Create new Plates instance
$templates = new League\Plates\Engine(APPPATH);
$jmw       = new League\Plates\Engine(APPPATH.'admin');
$login     = new League\Plates\Engine(APPPATH.'admin/login');
$templates->loadExtension(new League\Plates\Extension\Asset(__DIR__.'/assets/', true));
$jmw->loadExtension(new League\Plates\Extension\Asset(__DIR__.'/assets/', true));
$login->loadExtension(new League\Plates\Extension\Asset(__DIR__.'/assets/', true));

// Module Setting
$sosmed = $db->connection("SELECT * FROM social_media")->fetchAll();

// Menu Produk
$menu = $db->connection("SELECT k.id_produk_kategori, k.judul, k.judul_seo, COUNT(p.id_produk) AS jml FROM produk_kategori k JOIN produk p ON p.id_produk_kategori = k.id_produk_kategori GROUP BY k.id_produk_kategori ORDER BY k.id_produk_kategori DESC ")->fetchAll();

$templates->addData(['namaweb' => $namaweb,'deskrip' => $deskrip,'imgname1' => $imgname1]);
$jmw->addData(['namaweb' => $namaweb,'deskrip' => $deskrip,'imgname1' => $imgname1]);
$login->addData(['namaweb' => $namaweb,'deskrip' => $deskrip,'imgname1' => $imgname1]);
$templates->addData(['db' => $db, 'seo' => '', 'base_url' => $base_url, 'csrf' => $csrf,'sosmed' => $sosmed, 'menu' => $menu,'deskrip' => $deskrip]);

$theme = $db->connection("SELECT * FROM theme")->fetchAll();
$jmw->addData(['tehe' => $theme, 'seo' => '']);


// Button Floating Whatsapp 
$textBtnWa = "Halo ".$namaweb." saya mau order, bisa minta informasinya lebih lanjut?  ";

$stat = array(
    'pengunjung'  => $pengunjung,
    'totalpengunjung'  => $totalpengunjung['totalz'],
    'online'   => $online
);

$templates->addData(['textBtnWa' => $textBtnWa,'stat' => $stat]);