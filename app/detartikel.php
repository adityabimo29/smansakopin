<?php $this->layout('template') ?>
<section class="mainn elytra cta aos-init aos-animate  d-flex align-items-center py-5"
    style="background: url('images/artikel/<?=$data['gambar']?>') no-repeat fixed ;background-size: cover;background-position: center;"
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
<div class="container pt-4">
    <section class="row">
        <div class="col-md-8">
            <article>
                <img src="images/artikel/<?=$data['gambar']?>" class="w-100" alt="<?=$data['judul_seo']?>">
                <h4 class="font-weight-bold mt-3"><?=$data['judul']?></h4>
                <hr>
                <div class="addthis_inline_share_toolbox"></div>
                <?=$data['deskripsi']?>
            </article>
        </div>
        <div class="col-md-4">
            <h4 class="font-weight-bold mb-3">Berita Lainnya</h4>
            <aside>
                <?php foreach($artikel as $r) : ?>
                <div class="row no-gutters">
                    <div class="col-md-4 ">
                        <a href="berita-<?= $r['judul_seo']."-".$r['id_artikel'] ?>">
                            <img class="w-100" src="images/artikel/<?=$r['gambar']?>" alt="<?=$r['judul_seo']?>">
                        </a>
                    </div>
                    <div class="col-md-8">
                        <div class="px-2">
                            <a class="loi" href="berita-<?= $r['judul_seo']."-".$r['id_artikel'] ?>">
                                <h6 class="font-weight-bold"><?=$r['judul']?></h6>
                            </a>
                            <div class="d-flex justify-content-between">
                                <div class="box-piyik"><i class="fa fa-calendar"></i> <?=tgl2($r['tgl'])?></div>
                                <div class="box-piyik"><i class="fa fa-eye"></i> <?=$r['dilihat']?></div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-12">
                        <hr>
                    </div>
                </div>
                <?php endforeach; ?>
            </aside>
        </div>
    </section>
</div>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-59dc9d30b368b392"></script>