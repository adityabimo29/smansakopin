<?php $this->layout('template') ?>
<section class="mainn elytra cta aos-init aos-animate  d-flex align-items-center py-5"
    style="background: url('images/<?=$data['gambar']?>') no-repeat fixed ;background-size: cover;background-position: center;"
    data-aos="fade-up">
    <div class="overlay"></div>
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
<section class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="about-text">
                <h2 class="my-4 text-left"><?=$data['judul']?></h2>
                <hr>
                <?=$data['deskripsi']?>
            </div>
        </div>
    </div>
</section>
<!-- About section end  -->