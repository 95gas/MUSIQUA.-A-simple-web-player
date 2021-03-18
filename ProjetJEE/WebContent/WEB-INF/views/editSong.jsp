<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- Metas -->
<meta charset="utf-8">
<title>Song editor</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Css -->
<link rel='stylesheet' href='resources/css/profilepage.css'
	type='text/css' media='all' />
<link rel='stylesheet' href='resources/css/fonts.css' type='text/css'
	media='all' />
<link rel='stylesheet' href='resources/font/FontAwesome/css/all.css'
	type='text/css' media='all' />


</head>
<body>
	<!--Header-->
	<header class="header default">
		<div class=" left-part">
			<a class="logo scroll" href="index">
				<h1 class="mb-0 uppercase">musiqua.</h1>
			</a>
		</div>
		<div class="right-part">
			<nav class="main-nav">
				<ul class="main-menu list-inline">
					<li><a class="scroll list-inline-item" href="index">Home</a></li>
					<li class="block-helper"><a href="#" class="scroll"><span><i
								class="icon-user"></i></span></a></li>
				</ul>
			</nav>
		</div>
	</header>

	<div class="sectionTitle paddingBottom">
		<span class="heading-t3"></span>
		<h2>Song editor</h2>
		<span class="heading-b3"></span>
	</div>
	<!-- end sectionTtile -->

	<div class="container_info">

		<!-- Info album -->
		<form method="post">
			<div class="row">
				<div class="margin-top">
					<span class="pad-left pad-right"> <label for="fname"
						class="pad-right-sm">Title</label> <input class="long" type="text"
						id="title" name="title" value="${song.getTitle()}">
					</span> 
					<span> <label for="lname" class="pad-right-sm">Artist</label>
						<input class="long" type="text" id="artist" name="artist"
						value="${song.getArtist()}">
					</span> 
					<span> <label for="lname" class="pad-right-sm">Genre</label>
						<input class="medium" type="text" id="genre" name="genre"
						value="${song.getGenre()}">
					</span> 
				</div>	
			</div>
			<div class="row">
				<div class="margin-top">
					<span> <label for="lname" class="pad-left pad-right-sm">Duration</label>
						<input class="short" type="text" id="duration" name="duration"
						value="${song.getDuration()}">
					</span> 
					<span class="pad-left"> <label for="fname"
						class="pad-right-sm">Year</label> <input class="short" type="text"
						id="year" name="year" value="${song.getYear()}">
					</span> 
					<span class="pad-left"> <label for="fname"
						class="pad-right-sm">Album</label> <input class="medium"
						type="text" id="album" name="album" value="${song.getAlbum()}">
					</span>
				</div>
			</div>
			<div class="row">
				<div class="margin-top">

					<span class="pad-left"> <label for="fname"
						class="pad-right-sm">Is it a top song of the month?</label> <input
						class="short" type="text" id="top" name="top"
						value="${song.isIs_top()}">
					</span>
				</div>
			</div>

			<!-- hidden textbox for storing the id parameter -->
			<input class="short" type="hidden" id="id" name="id" value="${song.getID()}">

			<!-- Divider -->
			<div class="heading-b3"></div>


			<div class="row2">
				<span class="operation2">
					<button type="submit" name="action"
						class="btn_edit_album margin-right green confirm_name"
						value="confirm">
						<i class="fas fa-check"></i>
					</button>
					<button type="submit"
						class="btn_edit_album margin-right red cancel_name" value="cancel"
						name="action">
						<i class="fas fa-times"></i>
					</button>
					<button type="submit" class="btn_edit_album margin-right bin"
						value="delete" name="action">
						<i class="far fa-trash-alt"></i>
					</button>
				</span>
			</div>
		</form>

	</div>
</body>
</html>
