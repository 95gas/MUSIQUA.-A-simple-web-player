<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Metas -->
<meta charset="utf-8">
<title>Musiqua - MyPlaylist</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Css and fonts-->
<link href="resources/css/main.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/playlist.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/fonts.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/font/FontAwesome/css/all.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel='stylesheet'
	href="http://fonts.googleapis.com/css?family=Open+Sans%7CLekton%7CPT+Sans%7CLibre+Baskerville%7CMontserrat%7CKarla%7CRaleway%7CLora%7CLato%7CMerriweather+Sans%7CAbel&amp;ver=154954535"
	type='text/css' media='all' />
</head>

<body style="background-image: url(resources/assets/img/wall1.png);">
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
	
	<!-- Start header-->
	<header class="header default">
		<div class=" left-part">
			<a class="logo" href="index">
				<h2 class="mb-0 uppercase">musiqua.</h2>
			</a>
		</div>

		<!-- ===============  NAVIGATION MENU User Library ================ -->
		<div class="middle-part">
			<div class="button" id="button-album">
				<div id="circle"></div>
				<a href="Albums">Albums</a>
			</div>
			<div class="button" id="button-music">
				<div id="circle"></div>
				<a href="AllSongs">All music</a>
			</div>
			<div class="button" id="button-playlist"
				style="background-color: #BFC0C0">
				<div id="circle"></div>
				<a href="MyPlaylist">My playlists</a>
			</div>
		</div>
		<!-- =============== END NAVIGATION MENU User Library ================ -->

		<div class="right-part">
			<nav class="main-nav">
				<ul class="main-menu list-inline">
					<li><a href="index">Home</a></li>
					<li><a href="ProfilePage"><i class="icon-user"></i>${user_session.getUsername()}</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- End header-->

	<!-- =============== START MY PLAYLIST ================ -->
	<section id="discography" class="discography main">

		<!--Container-->
		<div class="container playlist">
			<!--Row-->
			<div class="row">

				<c:forEach items="${list_play}" var="playlist">

					<div class="col_playlist">
						<div class="block-content">
							<h5 class="uppercase">${playlist.title}</h5>
							<h3></h3>
							<!-- <h3>#songs</h3>  -->
							<a href="#"> <img class="animated"
								src="resources/assets/img/playlist/1.jpg" alt="">
							</a>
							<ul class="block-social list-inline ">
								<li class="list-inline-item mr-0"><a href="#"><i
										class="fas fa-share-alt"></i></a></li>
								<li class="list-inline-item mr-0"><a href="#"><i
										class="far fa-trash-alt"></i></a></li>
								<li class="list-inline-item mr-0"><a href="#"><i
										class="fas fa-pen"></i></a></li>
							</ul>
						</div>
					</div>

				</c:forEach>

				<div class="col_playlist">
					<a href="#"> <i class="fas fa-plus" id='add_playlist'></i>
					</a>
				</div>
			</div>
			<!--End row-->
		</div>
		<!--End container-->
	</section>
	<!--End my playlist section-->

	<!-- =============== START FOOTER ================ -->
	<section style="background-color: #eeeeee;">
		<div class="footer footerPadding bottom">
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

		<!-- javascript libraries -->
		<script src="resources/js/lib/jquery.js"></script>

		<!-- javascript scripts -->
		<script src="resources/js/script.js"></script>

</body>

</html>
