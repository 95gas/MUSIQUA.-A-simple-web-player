<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Metas -->
<meta charset="utf-8">
<title>Musiqua</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Css and fonts -->
<link href="resources/css/main.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/index.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/fonts.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/font/FontAwesome/css/all.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel='stylesheet'
	href="http://fonts.googleapis.com/css?family=Open+Sans%7CLekton%7CPT+Sans%7CLibre+Baskerville%7CMontserrat%7CKarla%7CRaleway%7CLora%7CLato%7CMerriweather+Sans%7CAbel&amp;ver=154954535"
	type='text/css' media='all' />
</head>

<body>

	<!-- Preloader -->
	<div class="loader">
		<!-- Preloader inner -->
		<div class="loader-inner">
			<svg width="120" height="220" viewbox="0 0 100 100"
				class="loading-spinner" version="1.1"
				xmlns="http://www.w3.org/2000/svg">
        <circle class="spinner" cx="50" cy="50" r="21" fill="#13181d"
					stroke-width="2" />
      </svg>
		</div>
		<!-- End preloader inner -->
	</div>
	<!-- End preloader-->

	<!--welcome page-->
	<section class="welcome" id="welcome">
		<div class="container welcome-content">
			<div class="back-rect"></div>
			<h1 class="large text-white uppercase mb-0">welcome to musiqua</h1>
			<div class="front-rect"></div>
		</div>
		<div class="subtitle">
			<div class="discover">
				<h1 class="medium text-white mb-0">Check out the top songs of
					this month!</h1>
			</div>
			<a href="#content"> <i class="fas fa-angle-double-down"></i></a>
		</div>

		<!--Header-->
		<header class="header default">
			<div class=" left-part">
				<a class="logo scroll" href="#welcome">
					<h2 class="mb-0 uppercase">musiqua</h2>
				</a>
			</div>
			<div class="right-part">
				<nav class="main-nav">
					<ul class="main-menu list-inline">
						<li><a class="scroll list-inline-item" href="#welcome">Home</a></li>
						<li class="block-helper"><a href="LoginServlet"
							class="scroll"><span><i class="icon-user">Log
										in/Sign up</i></span></a></li>
						<li><a class="scroll list-inline-item" href="AlbumServlet">Music
								Library</a></li>
					</ul>
				</nav>
			</div>
		</header>
		<!--End header-->
	</section>
	<!--End welcome page-->

	<!-- =============== START PLAYER ================-->
	<div class="main-music-player hide-player">
		<a class="hide-player-button"> <i class="fa fa-plus"></i> <i
			class="fa fa-minus"></i>
		</a>
		<div id="mesh-main-player" class="jp-jplayer"
			data-audio-src="resources/audio/flute.mp3"
			data-title="See right through ft. Fiora" data-artist="Tensnake"></div>

		<div id="mesh-main-player-content" class="mesh-main-player"
			role="application" aria-label="media player">
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
							<span class="span-1"></span> <span class="span-2"></span> <span
								class="span-3"></span>
						</button>
					</div>
					<div class="center-side">
						<div class="mesh-current-time"></div>
						<div class="mesh-seek-bar">
							<div class="mesh-play-bar"></div>
						</div>
						<div class="mesh-duration"></div>
					</div>
					<div class="right-player-side">
						<div class="mesh-thumbnail">
							<img src="resources/img/content/cover3.jpg" alt="">
						</div>
						<div class="mesh-title"></div>
						<div class="mesh-artist"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- =============== END PLAYER ================ -->


	<!-- =============== START TOP SONGS OF THE MONTH SECTION ================ -->


	<section id="content" class="albumSingle padding background-properties"
		style="background-color: #E3E4E6">
		<div class="container" style="padding-left: 0; padding-right: 0;">
			<div class="sectionTitle paddingBottom">
				<span class="heading-t3"></span>
				<h2>
					<a> Top songs of the month</a>
				</h2>
				<span class="heading-b3"></span>
			</div>
			<!-- end sectionTtile -->

			<div class="row">
				<div class="col-sm-8_home">
					<div id="post-59"
						class="jp-playlist post-59 albums type-albums status-publish has-post-thumbnail hentry albums-category-new">
						<div class="about-list clearfix">
							<span class="about-name"> NAME </span> <span class="about-length">
								LENGTH </span>
						</div>

						<c:forEach items="${topSongs}" var="song">
						
							<div class="trak-item"
								data-audio="http://theme-brothers.com/wp-content/uploads/2016/06/flute.mp3"
								data-artist="${song.artist}"
								data-thumbnail="resources/img/content/cover1.jpg">
								<audio src="resources/audio/flute.mp3" preload="none"
									title="${song.title}"></audio>
								<div class="play-pause-button">
									<div class="center-y-table">
										<i class="fa fa-play"></i>
									</div>
								</div>
								<div class="name-artist">
									<div class="center-y-table">
										<h2>${song.title}</h2>
									</div>
								</div>
								<time class="trak-duration" datetime="2016-06-02">
									${song.duration} </time>
							</div>
							
						</c:forEach>

					</div>
				</div>
				<!-- end-col-sm-8 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- =============== END TOP SONGS OF THE MONTH SECTION ================ -->

	<!-- =============== START FOOTER ================ -->
	<section style="background-color: #eeeeee;">
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
	</section>
	<!-- =============== END FOOTER ================ -->

	<!-- the library jquery has to be the first to be imported! otherwise we are encoutering some errors!
Hence, the order of libraries importation counts. -->
	<!-- javascript libraries -->
	<script src="resources/js/lib/jquery.js"></script>
	<script type="text/javascript" src="resources/js/lib/jquery.jplayer.js"></script>

	<!-- javascript scripts -->
	<script src="resources/js/script.js"></script>
	<script src="resources/js/jPlayer.js"></script>

</body>

</html>
