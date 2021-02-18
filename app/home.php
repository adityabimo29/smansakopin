<?php $this->layout('template') ?>
<section class="slider-slick">
    <?php foreach($slider as $r) : ?>
    <div>
        <picture>
            <source media="(min-width: 650px)" srcset="images/slider/<?=$r['gambar']?>">
            <source media="(max-width: 600px)" srcset="images/slider/small/<?=$r['gambar_mobile']?>">
            <img class="w-100" src="images/slider/<?=$r['gambar']?>">
        </picture>
    </div>
    <?php endforeach ?>
</section>

<section class="container ">
    <div class="row">
        <div class="col-md-12 my-3">
        <div class="mobile d-sm-none">
            <!-- SnapWidget -->
            <?=$snap['iframe_mobile']?>
        </div>
        <div class="desktop d-none d-md-block">
            <!-- SnapWidget -->
            <?=$snap['iframe_desktop']?>
        </div>
        </div>
    </div>
</section>

<section class="container">
    <div class="row ">
        <?php foreach($banner as $r) : ?>
        <div class="col-md-6 mb-4">
            <a href="<?=$r['url']?>">
                <picture>
                    <source media="(min-width: 650px)" srcset="images/banner/<?=$r['gambar']?>">
                    <source media="(max-width: 600px)" srcset="images/banner/small/<?=$r['gambar']?>">
                    <img class="w-100" src="images/banner/<?=$r['gambar']?>">
                </picture>
            </a>
        </div>
        <?php endforeach ?>
    </div>
</section>

<section class="container">
    <div class="row">
        <?php foreach($produk as $r) : ?>
        <div class="col-md-3 col-sm-4 col-6" style="margin-bottom:5px;padding: 5px;">
            <div class="service-widget border">
                <div class="post-media wow fadeIn ww">
                    <a href="label-baju-<?=$r['seo']."-".$r['id_produk']?>">
                        <picture>
                            <source media="(max-width: 600px)" srcset="images/produk/small/<?=$r['gambar']?>">
                            <source media="(min-width: 768px)" srcset="images/produk/<?=$r['gambar']?>">
                            <img src="images/produk/<?=$r['gambar']?>" alt="" class="img-responsive grow wiu"
                                style="height: auto; overflow: hidden;">
                        </picture>
                    </a>
                </div>
                <div class="product-card-text">
                    <a href="label-baju-<?=$r['seo']."-".$r['id_produk']?>">
                        <p class="product-card-name font-weight-bold" title="<?=$r['judulku']?>"><?=$r['judulku']?></p>
                    </a>
                    <p class="product-card-shop">Rp. <?=$r['harga']?></p>
                </div>
                <div class="product-card-text">
                    <a href="label-baju-<?=$r['seo']."-".$r['id_produk']?>" class="btn btn-secondary btn-md btn-block"
                        item-id="52161">Detail</a>

                </div>
            </div>
        </div>
        <?php endforeach ?>
    </div>
</section>