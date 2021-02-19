<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?=$this->insert('seo')?>

    <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
    <link rel="manifest" href="images/site.webmanifest">
    <link rel="mask-icon" href="images/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#2b5797">
    <meta name="theme-color" content="#ffffff">

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha512-tDXPcamuZsWWd6OsKFyH6nAqh/MjZ/5Yk88T5o+aMfygqNFPan1pLyPFAndRzmOWHKT+jSDzWpJv8krj6x1LMA=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slippry/1.4.0/slippry.min.css"
        integrity="sha512-T+a5Aa01HOiiskCpZYtRZu69nfOIyhjrDn0PRClEQTDKZ16pcdvaU7KD1m0NrQIKn6LqUzY8tgLsfOVGiJs2Rg=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css"
        integrity="sha512-nIm/JGUwrzblLex/meoxJSPdAKQOe2bLhnrZ81g5Jbh519z8GFJIWu87WAhBH+RAyGbM4+U3S2h+kL5JoV6/wA=="
        crossorigin="anonymous" />

    <!-- Main Stylesheets -->
    <link rel="stylesheet" href="assets/css/style.css?v<?=date('i:s')?>" />

</head>

<body class="hebo">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

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
                            <div><a target="_blank" href="https://www.facebook.com/smamuh5yk"><i
                                        class="fa fa-facebook"></i></a></div>
                            <div><a target="_blank" href="https://twitter.com/smamuh5yk"><i
                                        class="fa fa-twitter"></i></a></div>
                            <div><a target="_blank" href="#"><i class="fa fa-google-plus"></i></a></div>
                            <div><a target="_blank" href="http://www.youtube.com/c/smamuh5yk"><i
                                        class="fa fa-youtube"></i></a></div>
                            <div><a target="_blank" href="https://www.instagram.com/smamuh5yk"><i
                                        class="fa fa-instagram"></i></a>
                            </div>
                            <div><a target="_blank" href="#"><i class="fa fa-rss"></i></a></div>
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
                                    <a class="nav-link" href="artikel">BERITA / INFO SEKOLAH</a>
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

    <?= $this->section('content')?>


    <!-- Footer section   -->

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

    <script src="assets/js/yonder.js?<?=date('i:s')?>"></script>


</body>

</html>