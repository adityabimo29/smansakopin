<?php
//error_reporting(0);

$application_folder = 'app';
$system_path = 'system';
$admin_folder = 'admin';

if (($_temp = realpath($system_path)) !== FALSE)
{
    $system_path = $_temp.DIRECTORY_SEPARATOR;
}

// Path to the system directory
define('APPPATH', $application_folder.DIRECTORY_SEPARATOR);
define('BASEPATH', $system_path);
define('ADMPATH', $admin_folder.DIRECTORY_SEPARATOR);

require_once __DIR__.'/vendor/autoload.php';
require_once BASEPATH.'jogjamediaweb.php';


// Custom 404 Handler
$router->set404(function () use ($base_url) {
        header('location:  '.$base_url.'404');
});


/*
 * ------------------------------------------------------
 *  Router Front End
 * ------------------------------------------------------
 */

$router->get('/', function () use ($templates,$db) {

    // SEO
    $templates->addData(['seo' => 'home']);
    
    $slider  = $db->connection('SELECT * FROM slider  ORDER BY id_slider DESC ')->fetchAll();

    $prakata  = $db->connection('SELECT deskripsi FROM page  WHERE id_page = 13 ')->fetchColumn();

    $video  = $db->connection('SELECT * FROM page  WHERE id_page = 14 ')->fetch();

    $welcome  = $db->connection('SELECT * FROM page  WHERE id_page = 3 ')->fetch();

    $foto  = $db->connection('SELECT *, f.gambar AS gambar ,f.judul AS judul, COUNT(g.id_gallery) + 1 AS jml FROM foto f JOIN gallery_foto g ON g.id_foto = f.id_foto GROUP BY f.id_foto  ORDER BY f.tgl DESC')->fetchAll();

    echo $templates->render('home', ['slider' => $slider, 'foto' => $foto, 'prakata' => $prakata, 'welcome' => $welcome, 'video' => $video ]);

});

$router->get('/404', function () use ($templates,$db) {

    echo $templates->render('404');

});



$router->get('/cara-pemesanan-pembayaran-label', function () use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'cara-order']);

    $data        = $db->read('page','*', 'id_page = 9')->fetch(PDO::FETCH_ASSOC);
    echo $templates->render('page', ['data' => $data,]);

});

$router->get('/kontak', function () use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'kontak']);

    $data        = $db->read('page','*', 'id_page = 8')->fetch(PDO::FETCH_ASSOC);
    echo $templates->render('page', ['data' => $data,]);

});

$router->get('/testimoni', function () use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'testimoni']);

    $data        = $db->read('testimoni')->fetchAll(PDO::FETCH_ASSOC);
    echo $templates->render('testimoni', ['data' => $data,]);

});

$router->get('/promo', function () use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = 1;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection("SELECT * FROM foto WHERE promo='Ya' ")->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,'promo');
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $foto         = $db->connection("SELECT * FROM foto  WHERE promo='Ya'  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('promo', ['foto' => $foto,'pagination' => $pagination]);

});

$router->get('/promo-page-(\d+)', function ($id) use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = $id;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection("SELECT * FROM foto WHERE promo='Ya'  ")->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,'foto');
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $foto         = $db->connection("SELECT * FROM foto WHERE promo='Ya'  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('promo', ['foto' => $foto,'pagination' => $pagination]);

});

$router->get('/terbaru', function () use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = 1;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection("SELECT * FROM foto ORDER BY tgl DESC ")->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,'terbaru');
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $foto         = $db->connection("SELECT * FROM foto  ORDER BY tgl DESC  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('terbaru', ['foto' => $foto,'pagination' => $pagination]);

});

$router->get('/terbaru-page-(\d+)', function ($id) use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = $id;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection("SELECT * FROM foto WHERE terbaru='Ya'  ")->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,'foto');
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $foto         = $db->connection("SELECT * FROM foto WHERE terbaru='Ya'  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('terbaru', ['foto' => $foto,'pagination' => $pagination]);

});


$router->get('/foto', function () use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = 1;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection('SELECT * FROM foto  ')->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,'foto');
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $foto         = $db->connection("SELECT * FROM foto  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('foto', ['foto' => $foto,'pagination' => $pagination]);

});

$router->get('/foto-page-(\d+)', function ($id) use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = $id;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection('SELECT * FROM foto  ')->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,'foto');
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $foto         = $db->connection("SELECT * FROM foto  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('foto', ['foto' => $foto,'pagination' => $pagination]);

});


$router->get('/kategori-(.*)-(\d+)-page-(\d+)', function ($slug,$id,$pg) use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = $pg;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection("SELECT * FROM foto WHERE id_foto_kategori = $id  ")->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,"kategori-$slug-$id");
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $judul          = $db->connection("SELECT judul FROM foto_kategori WHERE id_foto_kategori = $id  ")->fetchColumn();

    $foto         = $db->connection("SELECT * FROM foto WHERE id_foto_kategori = $id  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('kategorifoto', ['judul'=>$judul,'foto' => $foto,'pagination' => $pagination]);

});


$router->get('/kategori-(.*)-(\d+)', function ($slug,$id) use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'foto']);

    /** Paging foto */
    $page   	    = new pagingAll;
    $batas 		    = 12;
    $idPag          = 1;
    $posisi 	    = $page->cariPosisi($batas,$idPag);
    $jmldata        = $db->connection("SELECT * FROM foto WHERE id_foto_kategori = $id  ")->rowCount();
	$jmlhalaman     = $page->jmlhalaman($jmldata, $batas);
    $linkHalaman    = $page->navHalaman($idPag, $jmlhalaman,"kategori-$slug-$id");
    $pagination     = array(
        'batas'         => $batas,
        'jmldata'       => $jmldata,
        'jmlhalaman'    => $jmlhalaman,
        'linkHalaman'   => $linkHalaman
    );

    $judul          = $db->connection("SELECT judul FROM foto_kategori WHERE id_foto_kategori = $id  ")->fetchColumn();
    $foto         = $db->connection("SELECT * FROM foto WHERE id_foto_kategori = $id  LIMIT $posisi,$batas ")->fetchAll(PDO::FETCH_ASSOC);
    
    echo $templates->render('kategorifoto', ['judul'=>$judul,'foto' => $foto,'pagination' => $pagination]);

});



$router->get('/foto-(.*)-(\d+)', function ($slug,$id) use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'detfoto', 'id_seo' => $id]);

    $datas        = $db->read('foto', '*', "id_foto = $id ")->fetch();
    $gallery      = $db->connection("SELECT * FROM gallery_foto WHERE id_foto = $id ");
    echo $templates->render('detfoto', ['data' => $datas, 'gallery'=> $gallery] );

});


$router->get('/contact', function () use ($templates,$db) {

    /** SEO */
    $templates->addData(['seo' => 'contact']);

    echo $templates->render('contact');
});

$router->post('/contact', function () use ($templates,$db,$csrf) {

    // Validate that a correct token was given
    if ($csrf->validate('contact-csrf')) {
        $datas = array(
            'name' => $_POST['name'],
            'email' => $_POST['email'],
            'subject' => $_POST['subject'],
            'message' => $_POST['message'],
        );
        $admin = $db->connection("SELECT * FROM admin WHERE id = 2")->fetch();
        $res = sendEmail($datas,$admin);
        
        if($res){
            $db->insert("contact", $datas);
            echo "<script>window.alert('Send Contact Successfull !'); window.location= 'contact'</script>";
        }else{
            echo "<script>window.alert('Send Contact Failed !'); window.location(history.back(-1))</script>";
        }
        
    }
    else {
        echo "<script>window.alert('Send Contact Failed !'); window.location(history.back(-1))</script>";
    }

});

$router->post('/cari', function () use ($templates,$db) {
    $cari = $db->connection("SELECT * FROM foto WHERE nama LIKE '%$_POST[cari]%' ")->fetchAll();
    echo $templates->render('cari', ['porto' => $cari] );
});


$router->get('/artikel', function () use ($templates,$db) {
    /** SEO */
    $templates->addData(['seo' => 'artikel']);

    $data     = $db->connection("SELECT * FROM artikel ")->fetchAll();
    echo $templates->render('artikel',['data' => $data] );
});

$router->get('/artikel-page-(\d+)', function ($id) use ($templates,$db) {
});


$router->get('/news-(.*)-(\d+)', function ($slug,$id) use ($templates,$db) {
    /** SEO */
    $templates->addData(['seo' => 'detartikel', 'id_seo' => $id]);

    $datas      = $db->read('artikel', '*', "id_artikel = '$id' ")->fetch(PDO::FETCH_ASSOC);
    $artikel      = $db->connection("SELECT * FROM artikel WHERE id_artikel != $id ")->fetchAll();

    $dilihat = $datas['dilihat'] + 1;
    $db->update("artikel",array('dilihat' => $dilihat), "id_artikel = $datas[id_artikel]");

    echo $templates->render('detartikel', ['data' => $datas,'artikel' => $artikel] );
});


/*
 * ------------------------------------------------------
 *  Router Admin
 * ------------------------------------------------------
 */
include(APPPATH.'admin/router.php');

$router->run();