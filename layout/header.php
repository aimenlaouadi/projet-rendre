<?php
require_once 'function/error.php';
require_once 'function/query.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="css/boostrap.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/aos.css" rel="stylesheet">
  <link href="css/owl.carousel.min.css" rel="stylesheet">
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <title>ReconversionCode</title>
</head>

<body>

  <header>

    <!--section1 navbar-->
    <section class="section1  nav"> <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
      <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
        <div class="row">

          <div class="col-lg-12 d-lg-block  gap-3">
            <div>

              <nav class="navbar navbar-expand-lg bg-light text-dark opacity-75">
                <div class="container-fluid ">
                  <a class="navbar-brand" href="index.php">ReconversionCode</a>


                  <form role="search" method="$_GET" action="search.php">

                    <input class="me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                  </form>

                  <div class="justify-content-end" id="navbarNavAltMarkup">
                  <div class="navbar-nav gap-3 hov">
                      <a class="nav-link active" aria-current="page" href="index.php">Accueil</a>
                      <a class="nav-link" href="contact.php">Contact</a>
                      <a class="nav-link" href="upload_form">Upload</a>
                    </div>
                  </div>
                </div>
              </nav>

            </div>
          </div>

        </div>
    </section>

  </header>

  <?php
  if (isset($_GET['error'])) {
    $errorMsg = getErrorMessage(intval($_GET['error']));
    require_once 'templates/error_notfi.php';
  }
