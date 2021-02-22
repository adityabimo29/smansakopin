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
                    <h2 class="text-center mb-5"><strong class="">Video Profil SMAN 1 Kotapinang</strong></h2>
                    <br>
                    <div class=" text-center mt-5">
                        <a href="<?=$video['deskripsi']?>" class="kipo popup-youtube btn-play">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="py-5">
    <div class="container owl-wrap">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-2">Berita / Info Sekolah</h2>
            </div>
            <div class="col-md-12">
                <div class="d-flex justify-content-end">
                    <div class="owl-custom-nav mr-3 mb-4">
                        <div class="owl-prev"><i class="fa fa-angle-left"></i></div>
                        <div class="owl-next"><i class="fa fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row owl-carousel" id="owl-news">
            <?php foreach($berita as $r) : ?>
            <div class="item">
                <div class="rt-course-box">
                    <div class="rtin-thumbnail hvr-bounce-to-right">
                        <picture>
                            <source media="(min-width: 651px)" srcset="images/artikel/<?=$r['gambar']?>">
                            <source media="(max-width: 650px)" srcset="images/artikel/small/<?=$r['gambar']?>">
                            <img class="w-100 lazyOwl" data-src="images/artikel/<?=$r['gambar']?>">
                        </picture>
                        <a href="berita-<?=$r['judul_seo']."-".$r['id_artikel']?>" title="<?=$r['judul']?>"><i
                                class="fa fa-link" aria-hidden="true"></i></a>
                        <div class="rtin-price"><span class="rt-lp-price"><ins>Free</ins></span></div>
                    </div>
                    <div class="rtin-content-wrap">
                        <div class="rtin-content">
                            <h3 class="rtin-title"><a href="berita-<?=$r['judul_seo']."-".$r['id_artikel']?>"
                                    title="<?=$r['judul']?>"><?=$r['judul']?></a></h3>
                            <div class="rtin-author"><i class="fa fa-user" aria-hidden="true"></i><a href="#"> Smansa
                                    Kopin</a></div>
                            <div class="rtin-description"><?=limit_desc($r['deskripsi'],200)?></div>
                        </div>
                        <div class="rtin-meta rtin-count-1">
                            <div class="row">
                                <div class="col-sm-12 col-xs-12"><i class="fa fa-eye" aria-hidden="true"></i><span>
                                        <?=$r['dilihat']?></span></div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
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
            <div class="col-md-3 col-6 mb-4">
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