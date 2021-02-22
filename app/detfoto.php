<?php $this->layout('template') ?>
<section class="mainn elytra cta aos-init aos-animate  d-flex align-items-center py-5"
    style="background: url('images/foto/<?=$data['gambar']?>') no-repeat fixed ;background-size: cover;background-position: center;"
    data-aos="fade-up">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="gallary-header ">
                    <h2 class="text-center text-white"><strong class="">Galeri Foto</strong></h2>
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
                <h2><?=$data['judul']?></h2>
                <hr>
            </div>
        </div>
        <div class="row album-photos popup-foto">
            <?php foreach($gallery as $r) : ?>
            <div class="col-md-3 col-6 mb-4">
                <div class="ludogorets">
                    <a href="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>">
                        <picture>
                            <source media="(min-width: 651px)"
                                srcset="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>">
                            <source media="(max-width: 650px)"
                                srcset="images/gallery_foto/small/<?=$imgname1."-".$r['gambar']?>">
                            <img class="w-100" src="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>">
                        </picture>
                    </a>
                </div>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>