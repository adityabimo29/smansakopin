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

<section class="container mt-5">
    <div class="row ">
        <div class="col-md-6">
            <?=$welcome['deskripsi']?>
        </div>
        <div class="col-md-6">
            <img src="images/<?=$welcome['gambar']?>" class="w-100" alt="">
        </div>
    </div>
</section>
<section class="bg-abu">
    <div class="container">
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

<section class="raichu" style="position: relative;left: -89.5px;box-sizing: border-box;width: 1349px;padding-left: 89.5px;padding-right: 89.5px;background-image:url('images/<?=$video['gambar']?>')" >
    <div >
        <a class="btn btn-danger">Play</a>
    </div>
</section>
