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
<link href="resources/css/main.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/fonts.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/font/FontAwesome/css/all.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel='stylesheet'
	href="http://fonts.googleapis.com/css?family=Open+Sans%7CLekton%7CPT+Sans%7CLibre+Baskerville%7CMontserrat%7CKarla%7CRaleway%7CLora%7CLato%7CMerriweather+Sans%7CAbel&amp;ver=154954535"
	type='text/css' media='all' />
</head>

<body  style="background-image: url(resources/assets/img/vin2.jpg);"
		class="background-properties padding2">

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
				<a href="AlbumAdmin">Albums</a>
			</div>
			<div class="button" id="button-music"
				style="background-color: #BFC0C0">
				<div id="circle"></div>
				<a href="#">All music</a>
			</div>
			<div class="button" id="button-playlist">
				<div id="circle"></div>
				<a href="#">My playlists</a>
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

	<!-- =============== START LIST SONGS ================ -->
	<section>
		<div class="sectionTitle paddingBottom2">
			<span class="heading-t3"></span>
			<h2 style="color: white">User list</h2>
			<span class="heading-b3"></span>
		</div>
		<!-- end sectionTtile -->
		<div class="tableEvents">
			<div class="container list_songs">
				<div class="row">
					<div class="col-sm-12">
						<table>

							<c:forEach items="${Userlist}" var="user">

								<tr class="tableEventsTitle">
									<th class="Username">${user.username}</th>
									<th class="First_name">${user.firstname}</th>
									<th class="last_name">${user.lastname}</th>
									<th class="email_address">${user.email}</th>
								</tr>

							</c:forEach>

						</table>
					</div>
					<!-- end col-sm-12 -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</div>
		<!-- end tableEvents -->
	</section>

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

	</section>
	<!-- =============== END FOOTER ================ -->

	<script src="resources/js/lib/jquery.js"></script>


	<!-- javascript scripts -->
	<script src="resources/js/script.js"></script>


</body>

</html>
