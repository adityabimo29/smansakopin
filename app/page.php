<?php $this->layout('template') ?>
<section class="mainn cta aos-init aos-animate nabar d-flex align-items-center pb-5"
    style="padding-top: 20px;background: url('images/<?=$data['gambar']?>') no-repeat fixed ;background-size: cover;background-position: center;"
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
<section class="about-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 p-0">
                <div class="about-text">
                    <h2 class="my-4 text-center"><?=$data['judul']?></h2>
                    <hr>
                    <?=$data['deskripsi']?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About section end  -->