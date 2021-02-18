<?php


// Update modul
if ($act == 'update') {
    $judul_seo = seo($_POST["judul"]);
    try {
        $datas = array(
            'judul' => $_POST["judul"],
            'judul_seo' => $judul_seo,
            'harga' => $_POST["harga"],
        );
        $db->update('produk_size', $datas, "id_produk_size = $_POST[id_produk_size] ");

        echo "<script>alert('Data Berhasil diedit'); window.location = 'produk-edit-$_POST[id_produk]'</script>";
    } catch (PDOException $e) {
        echo "<script>alert('Data Gagal diedit!'); window.location(history.back(-1))</script>";
    }
}

// add modul
elseif ($act == 'add') {
    $judul_seo = seo($_POST["judul"]);
    try {
        $datas = array(
            'judul' => $_POST["judul"],
            'id_produk' => $_POST["id_produk"],
            'judul_seo' => $judul_seo,
            'harga' => $_POST["harga"],
        );
        $saved = $db->insert('produk_size', $datas);

        echo "<script>alert('Datai Berhasil ditambah'); window.location = 'produk-edit-$_POST[id_produk]'</script>";

    } catch (PDOException $e) {
        echo "<script>window.alert('Data Gagal ditambah!'); window.location(history.back(-1))</script>";
    }
}

// remove modul
elseif ($act == 'remove') {
    $d = $db->connection("SELECT id_produk FROM produk_size WHERE id_produk_size = $id ")->fetchColumn();
    $db->delete("produk_size", "id_produk_size='$id' ");
    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal-edit-$d'</script>";
}
