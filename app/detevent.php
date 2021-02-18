<?php $this->layout('template') ?>
<!-- About section  -->
<section class="about-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                        <div class="col-lg-12 p-0">
                    <div class="pt-5 pb-2 px-4">
                        <img src="images/event/<?=$data['gambar']?>">
                        <h3 class="mt-4 mb-3"><?=$data['judul']?></h3>
                        <small><i class="fa fa-calendar"></i> <?= tgl2($data['tgl']) ?></small>
                        <hr>
                    </div>
                </div>
                <div class="col-md-12">
                    <?=$data['deskripsi']?>
                    
                    <!-- Accordions -->
						<div id="accordion" class="accordion-area">
							<div class="panel">
								<div class="panel-header active" id="headingOne">
									<button class="panel-link collapsed" data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">E CATALOG</button>
								</div>
								<div id="collapse1" class="collapse" aria-labelledby="headingOne" data-parent="#accordion" style="">
									<div class="panel-body">
                                     <iframe id="iframe" src="<?=$data['url_flipbook']?>" frameborder="0" width="100%" height="500px"></iframe>
									</div>
								</div>
							</div>
						</div>
                    
                </div>
                </div>
            </div>
            <div class="col-md-4">
                <h4 class="mt-5 mb-4">Event Lainnya</h4>
                <?php foreach($event as $r) : ?>
                 <div class="row ">
                     <div class="col-md-4">
                         <a href="event-<?=$r['judul_seo']."-".$r['id_event']?>">
                         <img class="w-100" src="images/event/<?=$r['gambar']?>">
                         </a>
                     </div>
                     <div class="col-md-8">
                         <a href="event-<?=$r['judul_seo']."-".$r['id_event']?>">
                         <h6 class="mb-3"><?= $r['judul'] ?></h6>
                         </a>
                         <small style="border:1px solid grey;border-radius:5px;padding:3px"><i class="fa fa-calendar"></i> <?= tgl2($r['tgl']) ?></small>
                     </div>
                     <div class="col-md-12"><hr></div>
                 </div>    
                <?php endforeach; ?>
            </div>
            
    </div>
</section>
<!-- About section end  -->


