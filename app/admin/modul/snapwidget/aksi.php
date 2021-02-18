<?php


// Update modul
if ($act == 'update') {
    try {
        $datas = array(
            'iframe_desktop' => $_POST["iframe_desktop"],
            'iframe_mobile' => $_POST["iframe_mobile"]
        );
        $db->update('snapwidget', $datas, "id= $_POST[id] ");

        echo "<script>alert('Data Berhasil diedit'); window.location = '$hal'</script>";
    } catch (PDOException $e) {
        echo "<script>alert('Data Gagal diedit!'); window.location = '$hal'</script>";
    }
}

// add modul
elseif ($act == 'add') {
    try {
        $datas = array(
            'judul' => $_POST["judul"],
            'judul_seo' => $judul_seo,
        );
        $saved = $db->insert('produk_kategori', $datas);

        echo "<script>alert('Datai Berhasil ditambah'); window.location = '$hal'</script>";

    } catch (PDOException $e) {
        echo "<script>window.alert('Data Gagal ditambah!'); window.location(history.back(-1))</script>";
    }
}

// remove modul
elseif ($act == 'remove') {
    $db->delete("produk_kategori", "id_produk_kategori='$id' ");
    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal'</script>";
}
