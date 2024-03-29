<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Four Fold Footy HPD - 21/22</title>
  <meta content="" name="Four Fold Standings = HPD">
  <meta content="" name="four fold, broughton, hpd">

  <!-- Favicons -->
  <link href="img/favicon.ico" rel="icon">

  <!-- Google Fonts -->
  <link
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i"
          rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="css/vendor/icofont/icofont.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css/main.css" rel="stylesheet">

  <meta property="og:site_name" content="Four Fold">
  <meta property="og:title" content="Four Fold 2021/22"/>
  <meta property="og:description" content="Four Fold Competition"/>
  <meta property="og:image" itemprop="image"
        content="https://images.unsplash.com/photo-1521019338804-f9544ddb91d3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80">
  <meta property="og:type" content="website"/>


  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-30056421-2"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-30056421-2');
  </script>




</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
  <div class="container d-flex flex-column align-items-center">

    <h1>Four Fold Footy</h1>
    <h2>2021/2022 Season</h2>

  </div>
</header><!-- End #header -->

<main id="main">

  <!-- ======= About Us Section ======= -->
  <section id="standings" class="standings">

    <div class="container">

      <div class="section-title">
        <div class="icon"><i class="icofont-football-alt"></i></div>
      </div>
    </div>


    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-12">
          <div class="icon-box">
            <div class="icon"><i class="icofont-crown-king"></i></div>
            <h4 class="title">${totals[0].first}</h4>
            <p class="description">${totals[0].second}</p>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-6 col-sm-offset-3 col-xs-12">
          <div class="icon-box">
            <div class="icon"><i class="icofont-crown-queen"></i></div>
            <h4 class="title">${totals[1].first}</h4>
            <p class="description">${totals[1].second}</p>
          </div>
        </div>
        <div class="col-lg-4 col-lg-offset-0 col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3 col-xs-12">
          <div class="icon-box">
            <div class="icon"><i class="icofont-danger-zone"></i></div>
            <h4 class="title">${totals[2].first}</h4>
            <p class="description">${totals[2].second}</p>
          </div>
        </div>
        <div class="col-lg-4 col-lg-offset-0 col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3 col-xs-12">
          <div class="icon-box">
            <div class="icon"><i class="icofont-trash"></i></div>
            <h4 class="title">${totals[3].first}</h4>
            <p class="description">${totals[3].second}</p>
          </div>
        </div>

      </div>
    </div>


  </section>


  <section id="results" class="results">

    <div class="container">

      <table class="table table-striped table-dark">
        <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Frank</th>
          <th scope="col">Gez</th>
          <th scope="col">Jase</th>
          <th scope="col">Mat</th>
        </tr>
        </thead>
        <tbody>

        <#assign count = 1>
        <#list rounds as round>
          <tr>
            <th scope="row">Round ${count}</th>
            <td>${round.frank}</td>
            <td>${round.gez}</td>
            <td>${round.jase}</td>
            <td>${round.mat}</td>
          </tr>
          <#assign count = count + 1>
        </#list>
        </tbody>
      </table>
    </div>
  </section>

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">
  <div class="container">

    <div class="social-links text-center">
      <a href="https://twitter.com/matbroughty" class="twitter"><i class="icofont-twitter"></i></a>
    </div>
  </div>
</footer><!-- End #footer -->

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

<!-- Vendor JS Files -->
<script src="js/vendor/jquery/jquery.min.js"></script>
<script src="js/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="js/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="js/vendor/jquery-countdown/jquery.countdown.min.js"></script>

<script src="js/main.js"></script>

</body>

</html>

