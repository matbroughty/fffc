<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Four Fold Footy - 22/23</title>
  <link href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" rel="stylesheet">
  <meta content="" name="Four Fold Standings">
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

<section class="section">

  <section class="hero">
    <div class="hero-body">
      <p class="title">
        Four Fold Footy
      </p>
      <p class="subtitle">
        2022 - 2023 Season
      </p>
    </div>
  </section>

  <nav class="level">
    <div class="level-item has-text-centered">
      <div>
        <p class="heading">Total Winnings</p>
        <p class="title">${totalSum}</p>
      </div>
    </div>
    <div class="level-item has-text-centered">
      <div>
        <p class="heading">Number of Rounds</p>
        <p class="title">${totalRounds}</p>
      </div>
    </div>
    <div class="level-item has-text-centered">
      <div>
        <p class="heading">Total Wins</p>
        <p class="title">${totalWins}</p>
      </div>
    </div>
  </nav>

  <div class="table-container">
    <table class="table is-fullwidth">
      <!-- Your table content -->

      <thead>
      <tr>
        <th><abbr title="Position">Pos</abbr></th>
        <th>Player</th>
        <th><abbr title="Winnings">Winnings</abbr></th>

        <#assign count = 1>
        <#list rounds as round>
        <th><abbr title="Round">R${count}</abbr></th>
        <#assign count = count + 1>
        </#list>

      </tr>
      </thead>
      <tfoot>
      <tr>
        <th><abbr title="Position">Pos</abbr></th>
        <th>Player</th>
        <th><abbr title="Winnings">Winnings</abbr></th>

        <#assign count = 1>
        <#list rounds as round>
        <th><abbr title="Round">R${count}</abbr></th>
        <#assign count = count + 1>
        </#list>

      </tr>
      </tfoot>
      <tbody>

      <tr>
        <th>1</th>
        <td>${totals[0].first}</td>
        <td>${totals[0].second}</td>

        <#list simpleRounds as simpleRound>
        <#if simpleRound[0].first == totals[0].first>
        <td>${simpleRound[0].second}</td>
        </#if>
        <#if simpleRound[1].first == totals[0].first>
        <td>${simpleRound[1].second}</td>
        </#if>
        <#if simpleRound[2].first == totals[0].first>
        <td>${simpleRound[2].second}</td>
        </#if>
        <#if simpleRound[3].first == totals[0].first>
        <td>${simpleRound[3].second}</td>
        </#if>
        <#if simpleRound[4].first == totals[0].first>
        <td>${simpleRound[4].second}</td>
        </#if>
        <#if simpleRound[5].first == totals[0].first>
        <td>${simpleRound[5].second}</td>
        </#if>
        <#if simpleRound[6].first == totals[0].first>
        <td>${simpleRound[6].second}</td>
        </#if>
        </#list>
      </tr>

      <tr>
        <th>2</th>
        <td>${totals[1].first}</td>
        <td>${totals[1].second}</td>
        <#list simpleRounds as simpleRound>
          <#if simpleRound[0].first == totals[1].first>
            <td>${simpleRound[0].second}</td>
          </#if>
          <#if simpleRound[1].first == totals[1].first>
            <td>${simpleRound[1].second}</td>
          </#if>
          <#if simpleRound[2].first == totals[1].first>
            <td>${simpleRound[2].second}</td>
          </#if>
          <#if simpleRound[3].first == totals[1].first>
            <td>${simpleRound[3].second}</td>
          </#if>
          <#if simpleRound[4].first == totals[1].first>
            <td>${simpleRound[4].second}</td>
          </#if>
          <#if simpleRound[5].first == totals[1].first>
            <td>${simpleRound[5].second}</td>
          </#if>
          <#if simpleRound[6].first == totals[1].first>
            <td>${simpleRound[6].second}</td>
          </#if>
        </#list>


      </tr>


      <tr>
        <th>3</th>
        <td>${totals[2].first}</td>
        <td>${totals[2].second}</td>
        <#list simpleRounds as simpleRound>
          <#if simpleRound[0].first == totals[2].first>
            <td>${simpleRound[0].second}</td>
          </#if>
          <#if simpleRound[1].first == totals[2].first>
            <td>${simpleRound[1].second}</td>
          </#if>
          <#if simpleRound[2].first == totals[2].first>
            <td>${simpleRound[2].second}</td>
          </#if>
          <#if simpleRound[3].first == totals[2].first>
            <td>${simpleRound[3].second}</td>
          </#if>
          <#if simpleRound[4].first == totals[2].first>
            <td>${simpleRound[4].second}</td>
          </#if>
          <#if simpleRound[5].first == totals[2].first>
            <td>${simpleRound[5].second}</td>
          </#if>
          <#if simpleRound[6].first == totals[2].first>
            <td>${simpleRound[6].second}</td>
          </#if>
        </#list>
      </tr>

      <tr>
        <th>4</th>
        <td>${totals[3].first}</td>
        <td>${totals[3].second}</td>
        <#list simpleRounds as simpleRound>
          <#if simpleRound[0].first == totals[3].first>
            <td>${simpleRound[0].second}</td>
          </#if>
          <#if simpleRound[1].first == totals[3].first>
            <td>${simpleRound[1].second}</td>
          </#if>
          <#if simpleRound[2].first == totals[3].first>
            <td>${simpleRound[2].second}</td>
          </#if>
          <#if simpleRound[3].first == totals[3].first>
            <td>${simpleRound[3].second}</td>
          </#if>
          <#if simpleRound[4].first == totals[3].first>
            <td>${simpleRound[4].second}</td>
          </#if>
          <#if simpleRound[5].first == totals[3].first>
            <td>${simpleRound[5].second}</td>
          </#if>
          <#if simpleRound[6].first == totals[3].first>
            <td>${simpleRound[6].second}</td>
          </#if>
        </#list>
      </tr>

      <tr>
        <th>5</th>
        <td>${totals[4].first}</td>
        <td>${totals[4].second}</td>
        <#list simpleRounds as simpleRound>
          <#if simpleRound[0].first == totals[4].first>
            <td>${simpleRound[0].second}</td>
          </#if>
          <#if simpleRound[1].first == totals[4].first>
            <td>${simpleRound[1].second}</td>
          </#if>
          <#if simpleRound[2].first == totals[4].first>
            <td>${simpleRound[2].second}</td>
          </#if>
          <#if simpleRound[3].first == totals[4].first>
            <td>${simpleRound[3].second}</td>
          </#if>
          <#if simpleRound[4].first == totals[4].first>
            <td>${simpleRound[4].second}</td>
          </#if>
          <#if simpleRound[5].first == totals[4].first>
            <td>${simpleRound[5].second}</td>
          </#if>
          <#if simpleRound[6].first == totals[4].first>
            <td>${simpleRound[6].second}</td>
          </#if>
        </#list>
      </tr>

      <tr>
        <th>6</th>
        <td>${totals[5].first}</td>
        <td>${totals[5].second}</td>
        <#list simpleRounds as simpleRound>
          <#if simpleRound[0].first == totals[5].first>
            <td>${simpleRound[0].second}</td>
          </#if>
          <#if simpleRound[1].first == totals[5].first>
            <td>${simpleRound[1].second}</td>
          </#if>
          <#if simpleRound[2].first == totals[5].first>
            <td>${simpleRound[2].second}</td>
          </#if>
          <#if simpleRound[3].first == totals[5].first>
            <td>${simpleRound[3].second}</td>
          </#if>
          <#if simpleRound[4].first == totals[5].first>
            <td>${simpleRound[4].second}</td>
          </#if>
          <#if simpleRound[5].first == totals[5].first>
            <td>${simpleRound[5].second}</td>
          </#if>
          <#if simpleRound[6].first == totals[5].first>
            <td>${simpleRound[6].second}</td>
          </#if>
        </#list>
      </tr>

      <tr>
        <th>7</th>
        <td>${totals[6].first}</td>
        <td>${totals[6].second}</td>
        <#list simpleRounds as simpleRound>
          <#if simpleRound[0].first == totals[6].first>
            <td>${simpleRound[0].second}</td>
          </#if>
          <#if simpleRound[1].first == totals[6].first>
            <td>${simpleRound[1].second}</td>
          </#if>
          <#if simpleRound[2].first == totals[6].first>
            <td>${simpleRound[2].second}</td>
          </#if>
          <#if simpleRound[3].first == totals[6].first>
            <td>${simpleRound[3].second}</td>
          </#if>
          <#if simpleRound[4].first == totals[6].first>
            <td>${simpleRound[4].second}</td>
          </#if>
          <#if simpleRound[5].first == totals[6].first>
            <td>${simpleRound[5].second}</td>
          </#if>
          <#if simpleRound[6].first == totals[6].first>
            <td>${simpleRound[6].second}</td>
          </#if>
        </#list>
      </tr>

      </tbody>
    </table>
  </div>
</section>

<footer class="footer">
  <div class="content has-text-centered">
    <p>
      <strong>Four Fold</strong> run by <a href="https://matbroughton.com">Mat Broughton</a>.
    </p>
  </div>
</footer>

</body>
</html>
