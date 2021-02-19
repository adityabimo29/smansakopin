<?php $this->layout('template') ?>
<section class="mainn buhi cta aos-init aos-animate  d-flex align-items-center pb-5"
    style="padding-top: 20px;background: url('images/foto/<?=$data['gambar']?>') no-repeat fixed ;background-size: cover;background-position: center;"
    data-aos="fade-up">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="gallary-header ">
                    <h2 class="text-center text-white"><strong class=""><?=$data['judul']?></strong></h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About section  -->
<section class="bg-abu py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Galeri</h2>
            </div>
        </div>
        <div class="row album-photos">
            <?php foreach($gallery as $r) : ?>
            <div class="col-md-3 mb-4">
                <figure class="item-album">
                    <figure class="thumbnail-img"
                        style="background-image: url('images/gallery_foto/small/<?=$imgname1."-".$r['gambar']?>'); background-size: cover; background-position: center center;">
                        <picture>
                            <source media="(min-width: 651px)"
                                srcset="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>">
                            <source media="(max-width: 650px)"
                                srcset="images/gallery_foto/small/<?=$imgname1."-".$r['gambar']?>">
                            <img class="w-100" src="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>"
                                style="display: none;">
                        </picture>
                    </figure>
                </figure>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>