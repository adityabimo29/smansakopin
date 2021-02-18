<section class="container">
    <div class="scrolling-wrapper row flex-row flex-nowrap mt-4 pb-4 pt-2 ">
        <?php foreach($produk as $r) : ?>
        <div class="jss9 col-md-3" style="flex: unset;">
            <div class="LazyLoad is-visible" style="height: 100%;">
                <div class="jss322 css-unsci6">
                    <div class="jss8 jss11 jss14">
                        <div class="jss9"><a href="/id/pashmina/70329-almas-pashmina-essential-series-rose-brown">
                                <div class="jss327"><span>
                                        <div class="LazyLoad is-visible jss222"><img
                                                src="images/produk/<?=$r['gambar']?>"
                                                class="" alt="<?=$r['judul']?>" title="<?=$r['judul']?>"
                                                aria-hidden="false">
                                        </div>
                                    </span>
                                    <div role="button" class="jss339 jss333 new jss334" tabindex="-1"><span
                                            class="jss352 jss337"><span>New</span></span></div>
                                </div>
                            </a></div>
                        <div class="jss9">
                            <div class="css-t346i3"><a href="kategori-<?=$r['jdl_seo']."-".$r['id_produk_kategori'] ?>">
                                    <h3 class="jss168 jss177"><?=$r['jdl']?></h3>
                                </a><a href="label-baju-<?=$r['seo']."-".$r['id_produk']?>">
                                    <h1 class="jss168 jss176 jss360" id="product-name"><?=$r['judulku']?></h1>
                                </a></div>
                        </div>
                        <div class="jss362"></div>
                        <h4 class="" style="font-size:12px;font-weight:bold;margin: 0;padding: 8px 12px;">
                            <span><?= "Rp ".$r['harga']?></span>
                        </h4>
                        <a style="width:50%;align-self:center;margin-bottom:10px" class="btn btn-secondary pb-2" href="label-baju-<?=$r['seo']."-".$r['id_produk']?>">Detail</a>
                        <!-- <div class="jss9">
                            <div class="jss363">
                                <div class="jss8 jss14 jss16">
                                     <div class="jss9" style="flex: 1 1 0%;"></div> 
                                    <div class="jss362"></div>
                                    <div class="jss9" style="flex: 1 1 0%;">
                                        <div class="jss8 jss11 jss14 jss18">
                                            <div class="jss9" style="flex: 1 1 0%;">
                                                <div class="jss8 jss14 jss16">
                                                    <div class="jss9" style="flex: 1 1 0%;"></div>
                                                    <div class="jss9" style="flex: 1 1 0%;">
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <?php endforeach ?>
    </div>
</section>



<?php 
        if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')   
               $url = "https://";   
          else  
               $url = "http://";   
          // Append the host(domain name, ip) to the URL.   
          $url.= $_SERVER['HTTP_HOST'];   
          
          // Append the requested resource location to the URL   
          $url.= $_SERVER['REQUEST_URI'];    
            
          $fragment = parse_url("$url", PHP_URL_FRAGMENT);  
?>
<?php
    if( isset($_POST['creeper']) ){
        $id   = $_POST['id'];
        $data = $pdo->query("SELECT * FROM produk WHERE id_produk=$id ")->fetch();
        
        $harga = 999;
        if($data['harga_diskon'] != 0 || $data['harga_diskon'] != ''){
            $harga = $data['harga_diskon'];
        }else{
            $harga = $data['kode_produk'];
        }
        $judul = $data['judul']." (".$_POST['ukuran']." - ".$_POST['warna'].")";
        $cart->add($data['id_produk'],$_POST['jumlah'],[
            'nama'   => $judul,
            'price'  => $_POST['harga'],
            'ukuran' => $_POST['ukuran'],
            'warna'  => $_POST['warna'],
            'gambar' => $data['gambar'],
            'seo'    => $data['judul_seo'],
            'berat'  => $data['berat']
        ]);
        
        header('location:keranjang');
    }
?>
<?php

		$stmt = $pdo->query("SELECT id_produk FROM produk WHERE id_produk='$_GET[id]' ");
		$sld  = $pdo->query("SELECT gambar FROM slideproduk WHERE id_produk='$_GET[id]'");
		$sldd = $sld->rowCount();
        //echo $sldd; 
		
		$row_count = $stmt->rowCount();
		if($row_count<1){
			header('location:home');
		}else{
			$stm = $pdo->query("SELECT * FROM produk WHERE id_produk='$_GET[id]'");
			$results = $stm->fetch(PDO::FETCH_ASSOC);
			
			$kat = $pdo->query("SELECT id_kategori, judul, judul_seo FROM kategori WHERE id_kategori='$results[id_kategori]'");
			$tkat = $kat->fetch(PDO::FETCH_ASSOC);
			
			$zmenu = $pdo->query("SELECT judul, judul_seo FROM menu WHERE id_menu='$results[id_menu]'");
			$tzmenu = $zmenu->fetch(PDO::FETCH_ASSOC);


            $dilihat = $results["dilihat"] + 1;
            $id_produk = $results["id_produk"];

            $sql2 = "UPDATE produk SET dilihat = :dilihat WHERE id_produk = :id_produk";

            $statement = $pdo->prepare($sql2);
            $statement->bindParam(":dilihat", $dilihat, PDO::PARAM_INT);
            $statement->bindParam(":id_produk", $id_produk, PDO::PARAM_INT);
            $count = $statement->execute();
		?>




<?php
$diskon = $data['harga_diskon'];
if($diskon=='' || $diskon == 0){ ?>
<input id="nuto" type="hidden" name="harga" value="<?=$data['harga']?>">
<b id="product-price" itemprop="price"> <b></b> Rp.
    <?php echo $data['harga'].",-"; ?></b>
<?php }else{ ?>
<input id="nuto" type="hidden" name="harga" value="<?=$data['harga_diskon']?>">
<b id="diskon" itemprop="price"> <b></b> Rp.
    <?php echo $data['harga'].",-"; ?></b>
<b id="product-price" itemprop="price"> <b></b> Rp.
    <?php echo $data['harga_diskon'].",-"; ?></b>
<?php } ?>