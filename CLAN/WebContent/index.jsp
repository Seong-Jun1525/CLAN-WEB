<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]>      <html class="no-js"> <!--<![endif]-->
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>CLAN WEB SITE</title>

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/responsive.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<!--[if lt IE 7]>
	<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<header>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand logo" href="./index.jsp">clan</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse bg-dark" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link" href="./pages/menu/notice.jsp">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="./pages/menu/member.jsp">클랜원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="./pages/menu/rank.jsp">클랜랭킹</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="./pages/menu/game.jsp">경기기록</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							회원관리
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="./pages/action/login.jsp">Sign in</a></li>
							<li><a class="dropdown-item" href="./pages/action/join.jsp">Sign up</a></li>
							<li><a class="dropdown-item" href="./pages/menu/master.jsp">클랜관리</a></li>
						</ul>
					</li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="클랜원 검색" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</header>
<section class="banner">
	<div class="container">
		<div id="carouselExampleCaptions" class="banner-slide carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="./img/img1.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<p>Some representative placeholder content for the first slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="./img/img2.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>Some representative placeholder content for the second slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="./img/img3.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Third slide label</h5>
						<p>Some representative placeholder content for the third slide.</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
</section>
<section class="clan">
	<div class="clan-notice">
		<div class="container">
			<div class="section-title">
				<h3><i class="fa-solid fa-bookmark"></i> <span>clan notice</span></h3>
			</div>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
					<th scope="col">Num</th>
					<th scope="col">Title</th>
					<th scope="col">Writer</th>
					<th scope="col">Date</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Title1</td>
						<td>작성자1</td>
						<td>2022-03-14</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Title2</td>
						<td>작성자2</td>
						<td>2022-03-14</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Title3</td>
						<td>작성자3</td>
						<td>2022-03-14</td>
					</tr>
					<tr>
					<th scope="row">4</th>
						<td>Title4</td>
						<td>작성자4</td>
						<td>2022-03-14</td>
					</tr>
					<tr>
					<th scope="row">5</th>
						<td>Title5</td>
						<td>작성자5</td>
						<td>2022-03-14</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
<section class="clan">
	<div class="clan-rank">
		<div class="container">
			<div class="section-title">
				<h3><i class="fa-solid fa-trophy"></i> <span>clan ranking</span></h3>
			</div>
			<table class="table table-dark table-hover">
				<thead>
				<tr>
					<th>Ranking</th>
					<th>ID</th>
					<th>Tribe</th>
					<th>Elo</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<th scope="row">1</th>
					<td><button type="button" class="player-record btn btn-sm btn-primary" data-bs-toggle="popover" title="전적" data-bs-content="0전 0승 0패 승률 0%">33UpGoliath</button></td>
					<td>T</td>
					<td>2000</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Z</td>
					<td>1900</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Larry the Bird</td>
					<td>P</td>
					<td>1800</td>
				</tr>
				<tr>
					<th scope="row">4</th>
					<td>Mark</td>
					<td>T</td>
					<td>2000</td>
				</tr>
				<tr>
					<th scope="row">5</th>
					<td>Jacob</td>
					<td>Z</td>
					<td>1900</td>
				</tr>
				<tr>
					<th scope="row">6</th>
					<td>Larry the Bird</td>
					<td>P</td>
					<td>1800</td>
				</tr>
				<tr>
					<th scope="row">7</th>
					<td>Mark</td>
					<td>T</td>
					<td>2000</td>
				</tr>
				<tr>
					<th scope="row">8</th>
					<td>Jacob</td>
					<td>Z</td>
					<td>1900</td>
				</tr>
				<tr>
					<th scope="row">9</th>
					<td>Larry the Bird</td>
					<td>P</td>
					<td>1800</td>
				</tr>
				<tr>
					<th scope="row">10</th>
					<td>Larry the Bird</td>
					<td>P</td>
					<td>1800</td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
<section class="clan">
	<div class="clan-tribe">
		<div class="container">
			<div class="section-title">
				<h3><i class="fa-solid fa-trophy"></i> <span>clan tribe</span></h3>
			</div>
			<div class="section-content">
				<div class="progress">
					<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 15%;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">15%</div>
					<div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" style="width: 15%;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">15%</div>
					<div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">70%</div>
				</div>
			</div>
		</div>
	</div>
</section>
<footer class="py-3">
	<div class="container">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item">
				<a href="./pages/menu/notice.jsp" class="nav-link px-2 text-muted">공지사항</a>
			</li>
			<li class="nav-item">
				<a href="./pages/menu/member.jsp" class="nav-link px-2 text-muted">클랜원</a>
			</li>
			<li class="nav-item">
				<a href="./pages/menu/rank.jsp" class="nav-link px-2 text-muted">클랜랭킹</a>
			</li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
		</ul>
		<div class="col-md-4 align-items-center">
			<p class="text-center text-muted">© 2022 Seong Jun</p>
			<ul class="nav col-md-4 justify-content-center list-unstyled">
				<li class="ms-3"><a class="text-muted" href="#"><i class="fa-brands fa-github-square"></i></a></li>
				<li class="ms-3"><a class="text-muted" href="#"><i class="fa-brands fa-instagram-square"></i></a></li>
				<li class="ms-3"><a class="text-muted" href="#"><i class="fa-solid fa-desktop"></i></a></li>
			</ul>
		</div>
	</div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/main.js"></script>
</body>
</html>