<?php
include "../../../system/koneksi.php";


$sql = $pdo->query("SELECT * FROM kategori ORDER BY judul ASC")->fetchAll();
$data = array();
$no = 1;
foreach ($sql as $row ) {
    array_push($data,
    array(
        $no,
        $row['judul'],
        '<a href="javascript:void(0)" class="ubah btn btn-primary"  data-btn="'.$row['id_kategori'].'"><i class="fa fa-edit"></i> Edit</a>
        <a href="javascript:void(0)" class="hapus btn btn-danger"  data-btn="'.$row['id_kategori'].'"><i class="fa fa-trash"></i> Hapus</a> '
    ));
  
  $no++;
}


echo json_encode(array('data'=> $data));

?>