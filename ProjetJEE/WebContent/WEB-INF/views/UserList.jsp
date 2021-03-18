<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Metas -->
  <meta charset="utf-8">
  <title>Musiqua - Songs</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Css and fonts-->
  <link href="css/main.css" rel="stylesheet" type="text/css" media="all"/>
  <link href="css/fonts.css" rel="stylesheet" type="text/css"  media="all" />
  <link href="font/FontAwesome/css/all.css" rel="stylesheet" type="text/css"  media="all" />
  <link rel='stylesheet'  href="http://fonts.googleapis.com/css?family=Open+Sans%7CLekton%7CPT+Sans%7CLibre+Baskerville%7CMontserrat%7CKarla%7CRaleway%7CLora%7CLato%7CMerriweather+Sans%7CAbel&amp;ver=154954535" type='text/css' media='all' />
</head>

<body>

  <!-- Preloader -->
  <div class="loader">
    <!-- Preloader inner -->
    <div class="loader-inner">
      <svg width="120" height="220" viewbox="0 0 100 100" class="loading-spinner" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <circle class="spinner" cx="50" cy="50" r="21" fill="#13181d" stroke-width="2"/>
      </svg>
    </div>
    <!-- End preloader inner -->
  </div>
  <!-- End preloader-->

  <!-- Start header-->
  <header class="header default">
    <div class=" left-part">
      <a class="logo" href="index.html">
        <h2 class="mb-0 uppercase">musiqua.</h2>
      </a>
    </div>

    <!-- ===============  NAVIGATION MENU User Library ================ -->
    <div class="middle-part">
      <div class="button" id="button-album">
        <div id="circle"></div>
        <a href="Albums.html">Albums</a>
      </div>
      <div class="button" id="button-music" style="background-color: #BFC0C0">
        <div id="circle"></div>
        <a href="#">All music</a>
      </div>
      <div class="button" id="button-playlist">
        <div id="circle"></div>
        <a href="MyPlaylist.html">My playlists</a>
      </div>
    </div>
    <!-- =============== END NAVIGATION MENU User Library ================ -->

    <div class="right-part">
      <nav class="main-nav">
        <ul class="main-menu list-inline">
          <li><a href="index.html">Home</a></li>
          <li><a href="profilepage.html"><i class="icon-user"></i></a></li>
        </ul>
      </nav>
    </div>
  </header>
  <!-- End header-->

  <!-- =============== START PLAYER ================-->
  <div class="main-music-player hide-player">
    <a class="hide-player-button">
      <i class="fa fa-plus"></i>
      <i class="fa fa-minus"></i>
    </a>
    <div id="mesh-main-player" class="jp-jplayer" data-audio-src="assets/audio/flute.mp3" data-title="See right through ft. Fiora" data-artist="Tensnake"></div>

    <div id="mesh-main-player-content" class="mesh-main-player" role="application" aria-label="media player">
      <div class="container">
        <div class="row">
          <div class="left-player-side">
            <div class="mesh-prev">
              <i class="fa fa-step-backward"></i>
            </div>
            <div class="mesh-play">
              <i class="fa fa-play"></i>
            </div>
            <div class="mesh-pause">
              <i class="fa fa-pause"></i>
            </div>
            <div class="mesh-next">
              <i class="fa fa-step-forward"></i>
            </div>
            <button id="playlist-toggle" class="jplayerButton">
              <span class="span-1"></span>
              <span class="span-2"></span>
              <span class="span-3"></span>
            </button>
          </div>
          <div class="center-side">
            <div class="mesh-current-time">
            </div>
            <div class="mesh-seek-bar">
              <div class="mesh-play-bar">
              </div>
            </div>
            <div class="mesh-duration">
            </div>
          </div>
          <div class="right-player-side">
            <div class="mesh-thumbnail">
              <img src="assets/img/content/cover3.jpg" alt="">
            </div>
            <div class="mesh-title">
            </div>
            <div class="mesh-artist">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- =============== END PLAYER ================ -->



  <!-- =============== START LIST SONGS ================ -->
  <section style="background-image: url(assets/img/vin2.jpg);" class="background-properties padding2">
    <div class="sectionTitle paddingBottom2">
      <span class="heading-t3"></span>
      <h2 style="color: white">User list</h2>
      <span class="heading-b3"></span>
    </div><!-- end sectionTtile -->
    <div class="tableEvents">
      <div class="container list_songs">
        <div class="row">
          <div class="col-sm-12">
            <table>
              <tr class="tableEventsTitle">
                <th class="First_name">First Name</th>
                <th class="last_name">Last Name</th>
                <th class="email_address">Email</th>
              </tr>

              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>

              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>
              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>

              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>
              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>

              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>

              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>

              <tr >
                <td class="name"><h7>Francesco</h7></td>
                <td class="surname"><h7>Gazzola</h7></td>
                <td class="email"><h7>gg@dsfali</h7></td>
              </tr>
            </table>
          </div><!-- end col-sm-12 -->
        </div><!-- end row -->
      </div><!-- end container -->
    </div><!-- end tableEvents -->
  </section>

  <!-- =============== START FOOTER ================ -->
  <section style="background-color:#eeeeee;">
    <div class="footer footerPadding">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="copyFooter">
              <a>&copy; Musiqua.</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- =============== END FOOTER ================ -->

<!-- the library jquery has to be the first to be imported! otherwise we are encoutering some errors!
Hence, the order of libraries importation counts. -->
<!-- javascript libraries -->
<script src="lib/jquery.js"></script>
<script type="text/javascript" src="lib/jquery.jplayer.js"></script>

<!-- javascript scripts -->
<script src="js/script.js"></script>
<script src="js/jPlayer.js"></script>

</body>

</html>
