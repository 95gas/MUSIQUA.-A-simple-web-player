<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">

<head>
<!-- Metas -->
<meta charset="utf-8">
<title>Musiqua - Your albums</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Css and fonts-->

<link href="resources/css/fonts.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel='stylesheet' href='resources/css/album.css' type='text/css'
	media='all' />
<link href="resources/css/main.css" rel="stylesheet" type="text/css"
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

	<!-- ===============  START HEADER ================ -->
	<header class="header default">
		<div class=" left-part">
			<a class="logo" href="index">
				<h2 class="mb-0 uppercase">musiqua.</h2>
			</a>
		</div>

		<!--   Navigation menu User Library -->
		<div class="middle-part">
			<div class="button" id="button-album"
				style="background-color: #BFC0C0">
				<div id="circle"></div>
				<a href="">Albums</a>
			</div>
			<div class="button" id="button-music">
				<div id="circle"></div>
				<a href="AllsongsAdmin">All music</a>
			</div>
			<div class="button" id="button-playlist">
				<div id="circle"></div>
				<a href="">My playlists</a>
			</div>
		</div>
		<!-- end navigation menu User Library -->

		<div class="right-part">
			<nav class="main-nav">
				<ul class="main-menu list-inline">
					<li><a href="index">Home</a></li>
					<li><a href="userList"><i class="icon-user"></i></a></li>

				</ul>
			</nav>
		</div>
	</header>
	<!-- ===============  END HEADER ================ -->

	<!-- =============== START ALBUM CATALOG ================ -->
	<section class="aquraFilter paddingGrid albumFilter" id="album-wall"
		style="background-image: url('resources/assets/img/wall1.png'); background-repeat: round">
		<div class="container">

			<!-- start  -->
			<div class="aqura-filter-content list-albums">
				<ul class="list-feature clearfix">
					<c:forEach items="${list_album}" var="album">
						
					<form method="post">
						<li class="col-md-3 col-sm-3 col-xs-12">
							<div class="album-icon">
								<span class="thumbs-album"> <img width="270" height="270"
									src="resources/assets/img/content/albumCover.png">
								</span> <span class="disk"></span>
							</div> <!-- end album icon -->
							<div class="name">
								<input type="hidden" id="album_name" name="album_name" value="${album.name}">
								<h3>${album.name}</h3>
								<p style="word-spacing: 5px;">
									<i class="fas fa-microphone" style="font-size: 1rem"></i>
									<input type="hidden" id="album_artist" name="album_artist" value="${album.artist}">
									${album.artist}
								</p>
								<p style="word-spacing: 10px;">
								<input type="hidden" id="album_duration" name="album_duration" value="${album.duration}">${album.duration}h 
								- 
								<input type="hidden" id="album_year" name="album_year" value="${album.year}">${album.year}
								</p>
								<span class="edit" id="edit">
									<button type="submit" class="btn_op" formmethod="post">
										<i class="fas fa-pen"></i>
									</button>
								</span> 
							</div> <!-- end name -->
						</li>
					</form>

					</c:forEach>
					
				</ul>
			</div>

		</div>
		<!-- end container -->
	</section>
	<!-- =============== END ALBUM CATALOG ================ -->

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

	<!-- javascript scripts -->
	<script src="resources/js/script.js"></script>
</body>

</html>
