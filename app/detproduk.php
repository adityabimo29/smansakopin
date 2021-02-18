<?php $this->layout('template') ?>
<div class="product-detail-container pt-4" itemscope="" itemtype="http://schema.org/Product">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-sm-7 col-sm-offset-0 content-holder">
                <div class="product-photo text-center" id="picture-box">
                    <?php if($jmlGallery<1){ ?>
                    <img data-index="2" id="photo-3" itemprop="image"
                        src="images/produk/<?php echo $data['gambar']; ?>">
                    <?php }else{ ?>
                    <div class="col-lg-12">
                        <ul class="pgwSlider">
                            <?php
								$no=1;
								while($tslgmbr = $gallery->fetch(PDO::FETCH_ASSOC)){
							?>
                            <li>
                                <img id='<?php echo $tslgmbr['judul']; ?>'
                                    src="images/gallery_produk/<?php echo $imgname1."-".$tslgmbr['gambar']; ?>">
                            </li>
                            <?php
						    $no++;
							}
							?>
                        </ul>
                    </div>
                    <?php } ?>
                </div>
            </div>
            <div id="item-control" class="col-lg-4 col-sm-5 content-holder" itemprop="offers" itemscope=""
                itemtype="http://schema.org/Offer">
                <!-- BUY CONTROL -->
                <div class="content-card">
                    <form method="post" id='formKeranjang'>
                        <h1 id="product-title">
                            <?php echo $data['judul']; ?>
                        </h1>
                        <div id="product-info" class="product-info">
                            <meta itemprop="priceCurrency" content="IDR">
                            <?php if($size->rowCount() > 0) : ?>
                                <input id="nuto" type="hidden" name="harga" value="<?=$data['harga']?>">
                                <b id="product-price" itemprop="price"> <b></b> 
                                <?php $dt = $size->fetchAll(); echo rentangHarga($dt); ?></b>
                            <?php else : ?>
                                <input id="nuto" type="hidden" name="harga" value="<?=$data['harga']?>">
                                <b id="product-price" itemprop="price"> <b></b> Rp.
                                <?php echo $data['harga'].",-"; ?></b>
                            <?php endif; ?>
                            <p class="mt-4">Size : <br>
                                <?php
                                    if($size->rowCount() > 0):
                                        $no = 1;
                                        foreach($dt as $r)  :
                                            echo " 
                                                <input data-harga='$r[harga]' class='checkbox-tools' type='radio' name='size' id='$r[id_produk_size]' value='$r[judul]'>
                            					<label class='for-checkbox-tools' for='$r[id_produk_size]'>
                        						$r[judul]
                        					    </label>";
                                        endforeach;
                                    else:
                                        echo "<input data-harga='$data[harga]' class='checkbox-tools' type='radio' name='size' id='default' value='Default' checked>
                                        <label class='for-checkbox-tools' for='default' >
                                        Default
                                        </label>";
                                    endif;
                                ?>
                            </p>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-3 col-form-label">Jumlah</label>
                                        <div class="col-sm-4">
                                            <input id="jml-barang" style="margin-bottom: 0;" type="number" name="jumlah"
                                                value="1" class="form-control form-control-sm ">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="separator-line"></div>
                        <!-- IF VARIATION -->
                        <a id="kirim-wa2" class="btn btn-success btn-md btn-block"
                            style="margin-bottom: 10px;color:white"><i class="fa fa-whatsapp"></i> Order via
                            WhatsApp</a>
                        <input type="hidden" name="creeper" id="creeper">
                        <input type="hidden" name="id" value="<?=$data['id_produk']?>">
                    </form>
                </div>
                <div class="content-card">
                    <div class="row">
                        <div class="col-sm-4 text-left share-via-text">
                            <a style="margin-left: 5px;"><b>Share via: </b></a>
                        </div>
                        <div class="col-sm-8 text-right share-via-icon">
                            <!-- share-->
                            <div class="share" style="float: left; width: 100%;">
                                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                <div class="addthis_inline_share_toolbox"></div>
                                <!-- AddThis Button END -->
                            </div>
                            <!-- .share ends -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-11 col-sm-12">
                <!-- DESCRIPTION -->
                <div class="content-card">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Detail</a>
                        </li>
                    </ul>
                    <div class="row field nav-tabs-small">
                        <div id="detail-nav">
                            <ul class="nav nav-tabs">
                                <li class="detail active px-3 py-2">
                                    <?php echo ($data['deskripsi']); ?>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="text-center hidden" id="recommended-item-loading" style="margin-bottom :10px">
                        <span class="qload qload-primary qload-sm"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-11 col-sm-12">
                <div class="heading-title text-center">
                    <h2>Produk Lainnya</h2>
                </div>
            </div>
        </div>
        <div class="col-lg-11 col-sm-12">
            <div class="row special-list">
                <?php
				while($r = $produk->fetch(PDO::FETCH_ASSOC)){
				?>
                <div class="col-md-3 col-sm-4 col-xs-6" style="margin-bottom:5px;padding: 5px;">
                    <div class="service-widget border">
                        <div class="post-media wow fadeIn ww">
                            <a href="label-baju-<?=$r['judul_seo']."-".$r['id_produk']?>">
                                <picture>
                                    <source media="(max-width: 600px)" srcset="images/produk/small/<?=$r['gambar']?>">
                                    <source media="(min-width: 768px)" srcset="images/produk/<?=$r['gambar']?>">
                                    <img src="images/produk/<?=$r['gambar']?>" alt="" class="img-responsive grow"
                                        style="height: auto; overflow: hidden;min-height:190px">
                                </picture>
                            </a>
                        </div>
                        <div class="product-card-text">
                            <a href="label-baju-<?=$r['judul_seo']."-".$r['id_produk']?>">
                                <p class="product-card-name font-weight-bold" title="<?=$r['judul']?>">
                                    <?=$r['judul']?></p>
                            </a>
                            <p class="product-card-shop">Rp. <?=$r['harga']?></p>
                        </div>
                        <div class="product-card-text">
                            <a href="label-baju-<?=$r['judul_seo']."-".$r['id_produk']?>"
                                class="btn btn-secondary btn-md btn-block" item-id="52161">Detail</a>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-59dc9d30b368b392"></script>

<script>
function ribuan(uang) {
    var reverse = uang.toString().split('').reverse().join(''),
        uang = reverse.match(/\d{1,3}/g);
    uang = uang.join('.').split('').reverse().join('');
    return uang;
}
// Tambah Ke Keranjang
/** 
document.getElementById("tbh-keranjang").addEventListener("click", function() {
    var checked = [...document.getElementsByName("ukuran")].some(c => c.checked);
    var checked2 = [...document.getElementsByName("warna")].some(c => c.checked);
    if (checked && checked2) {
        var ukuran = document.querySelector("input[name=ukuran]:checked").value;
        var warna = document.querySelector("input[name=warna]:checked").value;
        document.getElementById("creeper").value = 2;
        document.getElementById("formKeranjang").submit();
    } else {
        alert("Pilih Ukuran dan Warna Terlebih dahulu!");
        return false;
    }
});
*/

var radios = document.querySelectorAll('input[name=size]');
    radios.forEach(radio => radio.addEventListener('change', () => 
        {
            var harga = "Rp. " + document.querySelector("input[name=size]:checked").getAttribute("data-harga") + ",-";
            document.getElementById("product-price").innerHTML = "<b></b> " + harga ;
        }
    ));
document.getElementById("kirim-wa2").addEventListener("click", function() {

    var checked = [...document.getElementsByName("size")].some(c => c.checked);
    //var checked2 = [...document.getElementsByName("warna")].some(c => c.checked);
    if (checked) {
        var ukuran = document.querySelector("input[name=size]:checked").value;
        //var warna = document.querySelector("input[name=warna]:checked").value;
        var harga = document.querySelector("input[name=size]:checked").getAttribute("data-harga");;
        var x = location.href;
        var jml = document.querySelector("#jml-barang").value;
        harga2 = harga.split('.').join("");
        var total = jml * harga2;
        var text = "";
        var spasi = "\r\n\r\n";
        var pembuka = "Halo Label Klambi. Saya mau Order : " + spasi;
        var kata = pembuka + "-- <?= $data['judul']; ?>" + spasi + "-- Ukuran " + ukuran + spasi + "-- Harga " +
            harga + spasi;
        kata += "-- Jumlah " + jml + " * Rp" + harga + "= Rp" + ribuan(total) + spasi + "Link :" + x;
        text = window.encodeURIComponent(kata);
        window.open('https://api.whatsapp.com/send?phone=<?php echo $deskrip[7] ?>&text=' + text, '_blank');

        //location.href='home';
    } else {
        alert("Pilih Ukuran Terlebih dahulu!");
        return false;
    }
});
    $(document).ready(function() {
        $('.pgwSlider').pgwSlider();
        pgwSlider.stopSlide();
    });
</script>