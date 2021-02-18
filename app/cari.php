<?php $this->layout('template') ?>
<!-- Portfolio section  -->
<div class="portfolio-section">
    <div class="container">
        <h3>Hasil Pencarian</h3>
        <hr>
        <div class="row portfolio-gallery m-0">
            <?php foreach($porto as $r) : ?>
            <div class="mix col-xl-2 col-md-3 col-sm-4 col-6 p-0 kat-<?=$r['id_portofolio_kategori']?>">
                <a href="images/portofolio/<?=$r['gambar']?>" class="portfolio-item img-popup set-bg"
                    data-setbg="images/portofolio/small/<?=$r['gambar']?>"></a>
            </div>
            <?php endforeach ?>
            <?php if(isset($porto[0]['gambar'])) : ?>
            <div class="mix col-xl-2 col-md-3 col-sm-4 col-6 p-0">
                <a href='portofolio' title='Next'>
                    <div class='portfolio-item  next-btn'>
                        <h2>More</h2>
                    </div>
                </a>
            </div>
            <?php else : ?>
              <div class="mix col-xl-2 col-md-3 col-sm-4 col-6 p-0">
                <a href='portofolio' title='Next'>
                    <div class='portfolio-item '>
                        <h2>Not Found</h2>
                    </div>
                </a>
            </div>
            <?php endif ?>
        </div>
    </div>
</div>
<!-- Portfolio section end  -->