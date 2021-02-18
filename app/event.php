<?php $this->layout('template') ?>
<!-- About section  -->
<section class="about-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 p-0">
                <div class="py-4 px-4">
                    <h2>Our Events</h2>
                    <hr>
                </div>
            </div>
            <?php foreach($data as $r) : ?>
                <div class="col-md-4 mb-4">
                    <div class="box-event">
                        <a href="event-<?=$r['judul_seo']."-".$r['id_event'] ?>">
                            <div class="gbr-area">
                                <img class="w-100" src="images/event/<?=$r['gambar']?>" alt="<?=$r['judul']?>">
                            </div>
                            <div class="text-area">
                                <small style="color:black"><i class="fa fa-calendar"></i> <?= tgl2($r['tgl']) ?></small>
                                <hr>
                                <h4 class="text-left"><?=$r['judul']?></h4>
                            </div>
                        </a>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<!-- About section end  -->