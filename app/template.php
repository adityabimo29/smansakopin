<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?=$this->insert('seo')?>

    <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
    <!-- <link rel="manifest" href="images/site.webmanifest"> -->
    <link rel="mask-icon" href="images/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#2b5797">
    <meta name="theme-color" content="#ffffff">

    

    <!-- Loading Stylesheets -->
    <link rel="stylesheet" href="assets/css/loading.css" />
    <link rel="stylesheet" href="assets/css/spinkit.min.css" />
    
    <!-- Bootstrap Stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha512-tDXPcamuZsWWd6OsKFyH6nAqh/MjZ/5Yk88T5o+aMfygqNFPan1pLyPFAndRzmOWHKT+jSDzWpJv8krj6x1LMA=="
        crossorigin="anonymous" />

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slippry/1.4.0/slippry.min.css"
        integrity="sha512-T+a5Aa01HOiiskCpZYtRZu69nfOIyhjrDn0PRClEQTDKZ16pcdvaU7KD1m0NrQIKn6LqUzY8tgLsfOVGiJs2Rg=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css"
        integrity="sha512-nIm/JGUwrzblLex/meoxJSPdAKQOe2bLhnrZ81g5Jbh519z8GFJIWu87WAhBH+RAyGbM4+U3S2h+kL5JoV6/wA=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.green.min.css"
        integrity="sha512-C8Movfk6DU/H5PzarG0+Dv9MA9IZzvmQpO/3cIlGIflmtY3vIud07myMu4M/NTPJl8jmZtt/4mC9bAioMZBBdA=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/meanmenu/meanmenu.min.css" />


    <!-- Main Stylesheets -->
    <link rel="stylesheet" href="assets/css/style.css?v<?=date('i:s')?>" />
    <link rel="stylesheet" href="assets/css/footer.css?v<?=date('i:s')?>" />

</head>

<body class="hebo">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="sk-folding-cube">
        <div class="sk-cube1 sk-cube"></div>
        <div class="sk-cube2 sk-cube"></div>
        <div class="sk-cube4 sk-cube"></div>
        <div class="sk-cube3 sk-cube"></div>
    </div>

    <header class="d-lg-none" >
        <nav style="display:none">
            <a href="<?=$base_url?>" alt="SMA Muhammadiyah 5 Yogyakarta"><img class="logo-small img-mean"
                    src="images/<?=$deskrip[1]?>"></a>
            <ul>
                <li><a href="<?=$base_url?>">Home</a></li>
                <li><a href="#">Profile</a>
                    <ul>
                        <li><a href="profile-sekolah">Profile Sekolah</a></li>
                        <li><a href="guru-staf">Guru & Staf</a></li>
                        <li><a href="visi-misi">Visi Misi</a></li>
                        <li><a href="sarana-prasarana">Sarana Prasarana</a></li>
                        <li><a href="prestasi">Prestasi</a></li>
                    </ul>
                </li>
                <li><a href="berita">Berita / Info Sekolah</a></li>
                <li><a href="#">Galeri</a>
                    <ul>
                        <li><a href="foto">Foto</a></li>
                        <li><a href="video">Video</a></li>
                    </ul>
                </li>
                <li><a href="kontak">Kontak</a></li>
            </ul>
        </nav>
    </header>

    <!-- Header section  -->
    <div class="d-none d-md-block">
        <div id="tophead" class="d-flex align-items-center ">
            <div class="container">
                <div class="d-flex justify-content-between">
                    <div class="tophead-contact">
                        <div class="d-flex justify-content-around troop">
                            <div>
                                <i class="fa fa-phone" aria-hidden="true"></i> <a
                                    href="tel:<?=$deskrip[82]?>"><?=$deskrip[82]?></a>
                            </div>
                            <div>
                                <i class="fa fa-envelope-o" aria-hidden="true"></i> <a
                                    href="mailto:<?=$sosmed[5]['link']?>"><?=$sosmed[5]['link']?></a>
                            </div>
                        </div>
                    </div>
                    <div class="tophead-right">
                        <div class="tophead-social d-flex justify-content-around troop">
                            <div><a target="_blank" href="<?=$sosmed[0]['link']?>"><i class="fa fa-facebook"></i></a>
                            </div>
                            <div><a target="_blank" href="<?=$sosmed[1]['link']?>"><i class="fa fa-twitter"></i></a>
                            </div>
                            <div><a target="_blank" href="<?=$sosmed[2]['link']?>"><i class="fa fa-youtube"></i></a>
                            </div>
                            <div><a target="_blank" href="<?=$sosmed[3]['link']?>"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-putih  fixed-top piki"
            style="border-bottom: 1px solid #00000052;">
            <div class="container " style="display:block">
                <div class="row">
                    <div class="col-md-2 align-self-center">
                        <a class="navbar-brand" href="#">
                            <img style="align-self: center;" class="logo-top" src="images/<?=$deskrip[1]?>" alt="">
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div>

                    <div class="col-md-10 align-self-center">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mr-auto d-flex justify-content-around w-100">
                                <li class="nav-item active">
                                    <a class="nav-link" href="<?=$base_url?>">HOME <span
                                            class="sr-only">(current)</span></a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        PROFILE
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="profile-sekolah">Profile Sekolah</a>
                                        <a class="dropdown-item" href="guru-staf">Guru & Staf</a>
                                        <a class="dropdown-item" href="visi-misi">Visi Misi</a>
                                        <a class="dropdown-item" href="sarana-prasarana">Sarana Prasaran</a>
                                        <a class="dropdown-item" href="prestasi">Prestasi</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="berita">BERITA / INFO SEKOLAH</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        GALERI
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="foto">Foto</a>
                                        <a class="dropdown-item" href="video">Video</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="kontak">KONTAK</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <div class="clearfix"></div>
    <!-- Header section end  -->
    <div class="krasnodar">
        <?= $this->section('content')?>
    </div>

    <!-- Footer section   -->
    <footer class="ftco-footer ftco-bg-dark ftco-section img"
        style="background-image: url(images/bg_2.jpg); background-attachment:fixed;">
        <div class="overlay"></div>
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-3">
                    <div class="ftco-footer-widget mb-4">
                        <a class="" href="<?=$base_url?>"><img style="width:200px" src="images/<?=$deskrip[1]?>"
                                class="" alt=""></a>
                        <div class="mt-2"><?=$deskrip[18]?></div>
                        <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                            <li class="ftco-animate fadeInUp ftco-animated"><a href="#"><span
                                        class="fa fa-twitter"></span></a></li>
                            <li class="ftco-animate fadeInUp ftco-animated"><a href="#"><span
                                        class="fa fa-facebook"></span></a></li>
                            <li class="ftco-animate fadeInUp ftco-animated"><a href="#"><span
                                        class="fa fa-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="">Info Sekolah</h2>
                        <?php foreach($ftBerita as $r) : ?>
                        <div class="block-21 mb-4 d-flex">
                            <a href="berita-<?=$r['judul_seo']."-".$r['id_artikel']?>" class="blog-img mr-4"
                                style="background-image: url(images/artikel/small/<?=$r['gambar']?>);"></a>
                            <div class="text">
                                <h3 class="heading"><a
                                        href="berita-<?=$r['judul_seo']."-".$r['id_artikel']?>"><?=$r['judul']?></a>
                                </h3>
                                <div class="meta">
                                    <div><a href="#"><span class="fa fa-calendar"></span> <?=tgl2($r['tgl'])?></a></div>
                                    <div><a href="#"><span class="fa fa-eye"></span> <?=$r['dilihat']?></a></div>
                                </div>
                            </div>
                        </div>
                        <?php endforeach ?>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">Site Links</h2>
                        <ul class="list-unstyled">
                            <li><a href="<?=$base_url?>" class="py-2 d-block">Home</a></li>
                            <li><a href="profile-sekolah" class="py-2 d-block">Profil Sekolah</a></li>
                            <li><a href="visi-misi" class="py-2 d-block">Visi Misi</a></li>
                            <li><a href="foto" class="py-2 d-block">Foto</a></li>
                            <li><a href="video" class="py-2 d-block">Video</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Lokasi</h2>
                        <div class="block-23 mb-3">
                            <?=$deskrip[81]?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <p style="font-size:10px">
                        Copyright © 2021 All rights reserved | Developed <i class="icon-heart" aria-hidden="true"></i>
                        by <a href="https://www.jogjamediaweb.com" target="_blank">JMW</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Footer section end  -->



    <!-- Button model end -->

    <!--====== Javascripts & Jquery ======-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
        integrity="sha512-3P8rXCuGJdNZOnUx/03c1jOTnMn3rP63nBip5gOP2qmUh5YAdVAvFZ1E+QLZZbC1rtMrQb+mah3AfYW11RUrWA=="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.3.2/jquery-migrate.min.js"
        integrity="sha512-3fMsI1vtU2e/tVxZORSEeuMhXnT9By80xlmXlsOku7hNwZSHJjwcOBpmy+uu+fyWwGCLkMvdVbHkeoXdAzBv+w=="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha512-Ah5hWYPzDsVHf9i2EejFBFrG2ZAPmpu4ZJtW4MfSgpZacn+M9QHDt+Hd/wL1tEkk1UgbzqepJr6KnhZjFKB+0A=="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slippry/1.4.0/slippry.min.js"
        integrity="sha512-AuA2kbI9ByrbsuXrrdqY8qlayz6cFSwLl7qvLBQSMJIWJ5YFjBRKrtVWD3NKWZHOcxqpnqYJtcLaZARXxR+Kjg=="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/jquery.magnific-popup.min.js"
        integrity="sha512-+m6t3R87+6LdtYiCzRhC5+E0l4VQ9qIT1H9+t1wmHkMJvvUQNI5MKKb7b08WL4Kgp9K0IBgHDSLCRJk05cFUYg=="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous"></script>
    <script src="assets/meanmenu/jquery.meanmenu.min.js"></script>


    <script src="assets/js/yonder.js?<?=date('i:s')?>"></script>

    <script>
    document.onreadystatechange = function() {
        if (document.readyState !== "complete") {
            document.querySelector("body").style.visibility = "hidden";
            document.querySelector(".sk-folding-cube").style.visibility = "visible";
        } else {
            document.querySelector(".sk-folding-cube").style.display = "none";
            document.querySelector("body").style.visibility = "visible";
        }
    };
    jQuery(document).ready(function() {
        jQuery('header nav').meanmenu();
    });
    </script>
</body>

</html>