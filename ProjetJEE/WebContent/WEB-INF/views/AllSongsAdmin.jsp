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

<body style="background-image: url(resources/assets/img/vin2.jpg);"
	class="background-properties">

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
					<li><a href="index">Home</a></li>
					<li><a href="userList"><i class="icon-user"></i></a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- End header-->

	<!-- =============== START PLAYER ================-->
	<div class="main-music-player hide-player">
		<a class="hide-player-button"> <i class="fa fa-plus"></i> <i
			class="fa fa-minus"></i>
		</a>
		<div id="mesh-main-player" class="jp-jplayer"
			data-audio-src="assets/audio/flute.mp3"
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
							<img src="assets/img/content/cover3.jpg" alt="">
						</div>
						<div class="mesh-title"></div>
						<div class="mesh-artist"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- =============== END PLAYER ================ -->

	<!-- =========== ADD NEW ITEM =================== -->

	<!-- =========== END ADD NEW ITEM =================== -->

	<!-- =============== START LIST SONGS ================ -->
	<section>

		<div class="tableEvents">
		<form>
			<div class="container paddingBottom">
				<div class="add_item">
					<button type="submit" formmethod="post" class="new_item" id="editable_info"
						 name="action" value="add">ADD SONGS</button>
				</div>
		</form>
				<div class="container list_songs">
					<div class="row">
						<div class="col-sm-12">
							<table>
								<tr class="tableEventsTitle">
									<th></th>
									<th></th>
									<th class="song">Song</th>
									<th class="artist">Artist</th>
									<th class="year">Year</th>
									<th class="genre">Genre</th>
									<th class="length">Length</th>
									<th class="album">Album</th>
									<th></th>
								</tr>

								<c:forEach items="${listAllSongs}" var="song">


									<tr>
										<form method="get">
											<td class="add fitwidth"><a href=""><i
													class="fa fa-plus"></i></a></td>
											<td class="play fitwidth">
												<div class="trak-item" id="track-list"
													data-audio="http://theme-brothers.com/wp-content/uploads/2016/06/flute.mp3"
													data-artist="Tensnake"
													data-thumbnail="assets/img/content/cover1.jpg">
													<audio src="assets/audio/flute.mp3" preload="none"
														title=" Tensnake - See Right Through Ft. Fiora"></audio>
													<div class="play-pause-button" id="play-list">
														<i style="font-size: 1.5rem" class="fa fa-play"></i>
													</div>
												</div>
											</td>
											<td class="music"><input type="hidden" id="title"
												name="title" value="${song.title}"> <h7>${song.title}</h7>
											</td>
											<td class="singer"><input type="hidden" id="artist"
												name="artist" value="${song.artist}"> <h7>${song.artist}</h7>
											</td>
											<td class="released"><input type="hidden" id="year"
												name="year" value="${song.year}"> <h7>${song.year}</h7>
											</td>
											<td class="type"><input type="hidden" id="genre"
												name="genre" value="${song.genre}"> <h7>${song.genre}</h7>
											</td>
											<td class="duration"><input type="hidden" id="duration"
												name="duration" value="${song.duration}"> <h7>${song.duration}</h7>
											</td>
											<td class="collection"><input type="hidden" id="album"
												name="album" value="${song.album}"> <h7>${song.album}</h7>
											</td>
											<td><span class="edit">
													<button type="submit" class="btn_op" formmethod="post"
														name="action" value="submit">
														<i class="fas fa-pen"></i>
													</button>
																						<!-- hidden textbox for storing the id parameter -->
											<input class="short" type="hidden" id="top" name="top"
												value="${song.is_top}">
											<input class="short" type="hidden" id="ID" name="ID"
												value="${song.ID}">
												</td>
										</form>
									</tr>
								</c:forEach>
							</table>
						</div>
						<!-- end col-sm-12 -->
					</div>
					<!-- end row -->
				</div>
			</div>
			<!-- end container -->
		</div>
		<!-- end tableEvents -->
	</section>
	<!-- =============== END SONG LIST SECTION ================ -->

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
		</div>
	</section>
	<!-- =============== END FOOTER ================ -->

	<!-- javascript libraries -->
	<script src="resources/js/lib/jquery.js"></script>

	<!-- javascript scripts -->
	<script src="resources/js/script.js"></script>

</body>

</html>
