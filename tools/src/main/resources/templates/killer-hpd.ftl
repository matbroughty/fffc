<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Prem Killer HPD - 20/21</title>
  <meta content="" name="Prem Killer Standings = HPD">
  <meta content="" name="prem, killer, broughton, hpd">

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

  <meta property="og:site_name" content="Premiership Killer">
  <meta property="og:title" content="Prem Killer 2020/21"/>
  <meta property="og:description" content="Prem Killer Competition"/>
  <meta property="og:image" itemprop="image"
        content="https://images.unsplash.com/photo-1521019338804-f9544ddb91d3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80">
  <meta property="og:type" content="website"/>


  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-30056421-2"></script>
  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', 'UA-30056421-2');
  </script>


</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
  <div class="container d-flex flex-column align-items-center">

    <h1>HPD Premiership Killer</h1>
    <h2>2020/2021 Season</h2>

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


  </section>


  <section id="results" class="results">

    <div class="container">
      <div class="table-responsive">
        <table class="table table-striped table-dark">
          <thead>
          <tr>
            <th scope="col">Game 1</th>
            <th scope="col">Mat</th>
            <th scope="col">Jase</th>
            <th scope="col">Pia</th>
            <th scope="col">Callum</th>
            <th scope="col">Jon</th>
            <th scope="col">Frank</th>
            <th scope="col">Dave</th>
            <th scope="col">Tim</th>
          </tr>
          </thead>
          <tbody>

          <#assign count = 1>
          <#list rounds as round>
            <tr>
              <th scope="row">R ${count}</th>

              <#if round.mat == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.mat?lower_case == "x">
                <td><i class="icofont-skull-face"></i></td>
              <#else>
                <td>${round.mat}</td>
              </#if>

              <#if round.jase == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.jase?lower_case == "x">
                <td><i class="icofont-skull-face"></i></td>
              <#else>
                <td>${round.jase}</td>
              </#if>

              <#if round.pia == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.pia?lower_case == "x">
                <td><i class="icofont-skull-face"></i></td>
              <#else>
                <td>${round.pia}</td>
              </#if>

              <#if round.callum == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.callum?lower_case == "x">
                <td><i class="icofont-skull-face"></i></td>
              <#else>
                <td>${round.callum}</td>
              </#if>

              <#if round.jon == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.jon?lower_case == "x">
                <td><i class="icofont-skull-face"></i></td>
              <#else>
                <td>${round.jon}</td>
              </#if>

              <#if round.frank == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.frank?lower_case == "x">
                <td><i class="icofont-skull-face"></i></td>
              <#else>
                <td>${round.frank}</td>
              </#if>

              <#if round.dave == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.dave?lower_case == "x">
                <td><i class="icofont-skull-face"></i></td>
              <#else>
                <td>${round.dave}</td>
              </#if>

              <#if round.tim == "?">
                <td><i class="icofont-question-circle"></i></td>
              <#elseif round.tim?lower_case == "x">
                <td><i class="icofont-skull-danger"></i></td>
              <#else>
                <td>${round.tim}</td>
              </#if>
            </tr>
            <#assign count = count + 1>
          </#list>
          </tbody>
        </table>
      </div>
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
