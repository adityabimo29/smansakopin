<?php $this->layout('template') ?>
<ul class="slippry-slider">
    <?php foreach($slider as $r) : ?>
    <li>
        <div class="text-content d-none d-md-block">
            <h2 class="text-white"><?=$r['judul']?></h2>
            <div class="putih"><?=$r['deskripsi']?></div>
            <!-- <a href="#!" class="button-link read-more">read more</a> -->
        </div>
        <div class="image-content">
            <picture>
                <source media="(min-width: 650px)" srcset="images/slider/<?=$r['gambar']?>">
                <source media="(max-width: 649px)" srcset="images/slider/small/<?=$r['gambar']?>">
                <img class="w-100" src="images/slider/<?=$r['gambar']?>">
            </picture>
        </div>
        <section class="">
            <div class="bx-prakata d-none d-md-block">
                <div><?=$prakata?></div>
            </div>
        </section>
    </li>
    <?php endforeach ?>
</ul>

<section class="container mt-5 py-5">
    <div class="row ">
        <div class="col-md-6">
            <?=$welcome['deskripsi']?>
        </div>
        <div class="col-md-6">
            <img src="images/<?=$welcome['gambar']?>" class="w-100" alt="">
        </div>
    </div>
</section>
<section class="mainn cta aos-init aos-animate raichu d-flex align-items-center py-5"
    style="padding-top: 20px;background: url('images/<?=$video['gambar']?>') no-repeat fixed ;background-size: cover;background-position: initial;"
    data-aos="fade-up">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="gallary-header ">
                    <h2 class="text-center"><strong class="">Video Profil SMAN 1 Kotapinang</strong></h2>
                    <br>
                    <div class=" text-center">
                        <a href="<?=$video['deskripsi']?>" class="kipo">
                            <i class="fa fa-play fa-4x text-danger"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Berita / Info Sekolah</h2>
            </div>
        </div>
        <div class="row album-photos">
            <?php foreach($artikel as $r) : ?>
            <div class="col-md-3 mb-4">
                <figure class="item-album">
                    <div class="thumb-icon">
                        <i class="fa fa-picture-o"></i>
                    </div>
                    <figcaption class="album-content">
                        <span class="title-album"><?=$r['judul']?></span>
                        <span class="amount-album"><?=$r['jml']?> Photos</span>
                        <a href="foto-<?=$r['judul_seo']."-".$r['id_foto']?>" class="btn btn-danger">Selengkapnya</a>
                    </figcaption>
                    <figure class="thumbnail-img"
                        style="background-image: url('images/foto/small/<?=$r['gambar']?>'); background-size: cover; background-position: center center;">
                        <picture>
                            <source media="(min-width: 651px)" srcset="images/foto/<?=$r['gambar']?>">
                            <source media="(max-width: 650px)" srcset="images/foto/small/<?=$r['gambar']?>">
                            <img class="w-100" src="images/foto/<?=$r['gambar']?>" style="display: none;">
                        </picture>
                    </figure>
                </figure>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<section class="bg-abu py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Galeri</h2>
            </div>
        </div>
        <div class="row album-photos">
            <?php foreach($foto as $r) : ?>
            <div class="col-md-3 mb-4">
                <figure class="item-album">
                    <div class="thumb-icon">
                        <i class="fa fa-picture-o"></i>
                    </div>
                    <figcaption class="album-content">
                        <span class="title-album"><?=$r['judul']?></span>
                        <span class="amount-album"><?=$r['jml']?> Photos</span>
                        <a href="foto-<?=$r['judul_seo']."-".$r['id_foto']?>" class="btn btn-danger">Selengkapnya</a>
                    </figcaption>
                    <figure class="thumbnail-img"
                        style="background-image: url('images/foto/small/<?=$r['gambar']?>'); background-size: cover; background-position: center center;">
                        <picture>
                            <source media="(min-width: 651px)" srcset="images/foto/<?=$r['gambar']?>">
                            <source media="(max-width: 650px)" srcset="images/foto/small/<?=$r['gambar']?>">
                            <img class="w-100" src="images/foto/<?=$r['gambar']?>" style="display: none;">
                        </picture>
                    </figure>
                </figure>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>

