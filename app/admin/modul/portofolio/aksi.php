<?php
use \Gumlet\ImageResize;
// Update modul
if ($act == 'update') {
    $jdl2 = substr($_POST["nama"], 0, 100);

    $lokasi_file = $_FILES['lopoFile']['tmp_name'];
    $nama_file = $_FILES['lopoFile']['name'];
    $tipe_file = $_FILES['lopoFile']['type'];
    $ukuran = $_FILES['lopoFile']['size'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($jdl2);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . "-" . $acak . "." . $tipe_file2;
    $nama_file_unik = $seojdul . "-" . $acak . "." . $tipe_file2;
    $nama_seo = seo($_POST["nama"]);

    if (!empty($lokasi_file)) {
        if (($ukuran == 0) or ($ukuran == 02) or ($ukuran > 2060817)) {
            echo "<script>window.alert('Gagal Upload Gambar, ukuran gambar lebih dari 2 MB !'); window.location(history.back(-1))</script>";
        } else {
            $edit = $db->connection("SELECT gambar FROM portofolio WHERE id_portofolio='$_POST[id_portofolio]'");
            $tedit = $edit->fetch(PDO::FETCH_ASSOC);

            unlink("images/portofolio/$tedit[gambar]");
            unlink("images/portofolio/small/$tedit[gambar]");

            $res = lopoUpload($seojdul . '-' . $acak, 'portofolio');

            if ($res == true) {
                try {
                    $datas = array(
                        'nama' => $_POST["nama"],
                        'gambar' => $nama_file_unik,
                        'id_portofolio_kategori' => $_POST["id_portofolio_kategori"],
                    );
                    $db->update("portofolio", $datas, "id_portofolio= '$_POST[id_portofolio]' ");

                    $pathToImage = 'images/portofolio/' . $nama_file_unik;
                    $pathSmall = 'images/portofolio/small/' . $nama_file_unik;
                    lopoCompress('portofolio', $pathToImage, $tipe_file2, 1);
                    lopoCompress('portofolio/small', $pathToImage, $tipe_file2, 6);

                    $image = new ImageResize($pathSmall);

                    $image->save($pathSmall);

                    $image2 = new ImageResize($pathToImage);
                    $image2->save($pathToImage);

                    echo "<script>alert('portofolio Berhasil diedit'); window.location = '$hal-edit-$_POST[id_portofolio]'</script>";
                } catch (PDOException $e) {
                    echo "<script>alert('portofolio Gagal diedit!'); window.location = '$hal-edit-$_POST[id_portofolio]'</script>";
                }
            } else {
                echo "<script>alert('Something error with this image'); window.location(history.back(-1))</script>";
            }
        }
    } else {
        try {

            $edit = $db->connection("SELECT gambar FROM portofolio WHERE id_portofolio='$_POST[id_portofolio]'");
            $tedit = $edit->fetch(PDO::FETCH_ASSOC);
            $datas = array();

            $datas = array(
                'nama' => $_POST["nama"],
                'id_portofolio_kategori' => $_POST["id_portofolio_kategori"],
            );
            $db->update("portofolio", $datas, "id_portofolio= '$_POST[id_portofolio]' ");

            echo "<script>alert('portofolio Berhasil diedit'); window.location = '$hal-edit-$_POST[id_portofolio]'</script>";
        } catch (PDOException $e) {
            echo "<script>alert('portofolio Gagal diedit!'); window.location = '$hal-edit-$_POST[id_portofolio]'</script>";
        }
    }
}

// add modul
elseif ($act == 'add') {

    $lokasi_file = $_FILES['lopoFile']['tmp_name'];
    $nama_file = $_FILES['lopoFile']['name'];
    $tipe_file = $_FILES['lopoFile']['type'];
    $ukuran = $_FILES['lopoFile']['size'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($_POST["nama"]);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . "-" . $acak . "." . $tipe_file2;
    $nama_seo = seo($_POST["nama"]);
    // $tgl = explode("/", $_POST['tgl']);
    // $tgl1 = $tgl[0];
    // $bln = $tgl[1];
    // $thn = $tgl[2];
    date_default_timezone_set('Asia/Jakarta');

    // if ($_POST['tgl'] != '') {$tgl_post = "$thn-$bln-$tgl1";} else { $tgl_post = date('Y-m-d');}

    if (empty($nama_file)) {
        echo "<script>window.alert('Gambar Tidak Boleh Kosong!'); window.location(history.back(-1))</script>";
    } else {
        if (($ukuran == 0) or ($ukuran == 02) or ($ukuran > 2060817)) {
            echo "<script>window.alert('Gagal Upload Gambar, ukuran gambar lebih dari 2 MB !'); window.location(history.back(-1))</script>";
        } else {
            $res = lopoUpload($seojdul . '-' . $acak, 'portofolio');
            if ($res == true) {
                try {

                    $datas = array(
                        'nama' => $_POST["nama"],
                        'gambar' => $nama_file_unik,
                        'id_portofolio_kategori' => $_POST["id_portofolio_kategori"],
                    );
                    $saved = $db->insert('portofolio', $datas);
                    $insertId = $db->lastId();

                    $pathToImage = 'images/portofolio/' . $nama_file_unik;
                    $pathSmall = 'images/portofolio/small/' . $nama_file_unik;
                    lopoCompress('portofolio', $pathToImage, $tipe_file2, 1);
                    lopoCompress('portofolio/small', $pathToImage, $tipe_file2, 6);

                    $image = new ImageResize($pathSmall);
                    $image->save($pathSmall);

                    $image2 = new ImageResize($pathToImage);
                    $image2->save($pathToImage);

                    echo "<script>alert('Portofolio Berhasil ditambah'); window.location = '$hal-edit-$insertId'</script>";

                } catch (PDOException $e) {
                    echo "$e";
                }
            } else {
                echo "<script>alert('Format Gambar Salah !'); window.location = '$hal'</script>";
            }
        }
    }
}

// remove modul
elseif ($act == 'remove') {
    $edit = $db->connection("SELECT gambar FROM portofolio WHERE id_portofolio=$id ");
    $rr = $edit->fetch(PDO::FETCH_ASSOC);
    unlink("images/portofolio/$rr[gambar]");
    unlink("images/portofolio/small/$rr[gambar]");

    $del = $db->delete("portofolio", "id_portofolio=$id ");

    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal'</script>";

} elseif ($module == $module2 and $act == 'addgallery') {
    $edit = $db->connection("SELECT nama FROM portofolio WHERE id_portofolio='$_POST[id]'");
    $tedit = $edit->fetch(PDO::FETCH_ASSOC);

    $lokasi_file = $_FILES['nyanpload']['tmp_name'];
    $nama_file = $_FILES['nyanpload']['name'];
    $tipe_file = $_FILES['nyanpload']['type'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($tedit["nama"]);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . $acak . "." . $tipe_file2;
    $idku = $_POST['id'];
    if (empty($lokasi_file)) {
        echo "<script>window.alert('Belum ada Gambar yang Dimasukan!');
            window.location(history.back(-1))</script>";
    } else {
        try {
            UploadNyan($nama_file_unik, 'gallery_portofolio');

            $datas = array(
                'id_portofolio' => $idku,
                'gambar' => $nama_file_unik,
                'nama' => $_POST['nama'],
            );
            $db->insert('gallery_portofolio', $datas);

            unlink("../../../images/gallery_portofolio/$nama_file_unik");

            echo "<script>alert('Gambar berhasil dimasukan!'); window.location = '../../$module-edit-$_POST[id]#gallery_portofolio'</script>";
        } catch (PDOException $e) {
            echo "$e";
        }

    }
} elseif ($act == 'editgallery') {
    $edit = $db->connection("SELECT nama FROM portofolio WHERE id_portofolio='$_POST[idm]'");
    $tedit = $edit->fetch(PDO::FETCH_ASSOC);
    $idku = $_POST['idm'];

    $lokasi_file = $_FILES['nyanpload']['tmp_name'];
    $nama_file = $_FILES['nyanpload']['name'];
    $tipe_file = $_FILES['nyanpload']['type'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($tedit["nama"]);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . $acak . "." . $tipe_file2;

    if (empty($lokasi_file)) {
        echo "<script>window.alert('Belum ada Gambar yang Dimasukan!');
            window.location(history.back(-1))</script>";
    } else {

        UploadNyan($nama_file_unik, 'gallery_portofolio');

        $edit = $db->connection("SELECT gambar FROM gallery_portofolio WHERE id_gallery ='$_POST[id]'");
        $tedit = $edit->fetch(PDO::FETCH_ASSOC);

        unlink("../../../images/gallery_portofolio/$imgname1-$tedit[gambar]");
        unlink("../../../images/gallery_portofolio/small/$imgname2-$tedit[gambar]");

        $datas = array(
            'id_portofolio' => $idku,
            'gambar' => $nama_file_unik,
            'nama' => $_POST['nama'],
        );
        $db->update('gallery_portofolio', $datas, " id_gallery = '$_POST[id]' ");

        unlink("../../../images/gallery_portofolio/$nama_file_unik");

        echo "<script>alert('Slider gambar berhasil diedit!'); window.location = '../../$module-edit-$_POST[idm]#sliderportofolio'</script>";
    }
} elseif ($act == 'removegallery') {
    $edit = $db->connection("SELECT id_gallery, gambar FROM gallery_portofolio WHERE id_gallery='$_GET[id]'");
    $tedit = $edit->fetch(PDO::FETCH_ASSOC);
    unlink("../../../images/gallery_portofolio/$imgname1-$tedit[gambar]");
    unlink("../../../images/gallery_portofolio/small/$imgname1-$tedit[gambar]");
    $id = $tedit['id_gallery_portofolio'];

    $del = $db->connection("DELETE FROM gallery_portofolio WHERE id_gallery='$_GET[id]'");
    $del->execute();

    header('location:../../' . $module . '-edit-' . $_GET['idm'] . '#sliderportofolio');
}
