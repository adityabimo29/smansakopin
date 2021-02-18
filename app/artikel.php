<?php $this->layout('template') ?>
<!-- About section  -->
<section class="article-section" style="background-color: #F4F4F4;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 p-0">
                <div class="py-4 px-4">
                    <h2 class="font-weight-bold">Artikel</h2>
                    <hr>
                </div>
            </div>
            <?php foreach($data as $r) : ?>
            <div class="col-md-4 mb-4">
                <article>
                    <figure><a href="news-<?=$r['judul_seo']."-".$r['id_artikel']?>"><img
                                src="images/artikel/small/<?=$r['gambar']?>" alt="website template image"></a>
                        <!-- <figcaption>
                            <time datetime="2045-04-05T08:15+00:00"><strong>05</strong> <em>Apr</em></time>
                        </figcaption> -->
                    </figure>
                    <div class="excerpt">
                        <a style="color:black;text-decoration:none" href="news-<?=$r['judul_seo']."-".$r['id_artikel']?>"><h6 class="heading"><?=$r['judul']?></h6></a>
                        <ul class="nospace meta d-flex justify-content-between">
                            <li><i class="fa fa-calendar"></i> <a href="#"><?=tgl2($r['tgl'])?></a>
                            </li>
                            <li><i class="fa fa-eye"></i> <a
                                    href="#"><?=$r['dilihat']?></a></li>
                        </ul>
                        <p><?=limit_desc($r['deskripsi'],150)?> [<a
                                href="news-<?=$r['judul_seo']."-".$r['id_artikel']?>">…</a>]</p>
                        <footer><a class="btn" href="news-<?=$r['judul_seo']."-".$r['id_artikel']?>">Selengkapnya</a></footer>
                    </div>
                </article>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<!-- About section end  -->