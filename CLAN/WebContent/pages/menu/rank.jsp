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
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/responsive.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<%
	String memberID = null;
	if(session.getAttribute("memberID") != null) {
		memberID = (String) session.getAttribute("memberID");
	}
	
	int pageNumber = 1;
	if(request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
%>
<!--[if lt IE 7]>
	<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand logo" href="../../index.jsp">clan</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse bg-dark" id="navbarNav">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link" href="notice.jsp">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="member.jsp">클랜원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="rank.jsp">클랜랭킹</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="game.jsp">경기기록</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							회원관리
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<%
								if(memberID == null) {
							%>
								<li><a class="dropdown-item" href="../dropmenu/login.jsp">Sign in</a></li>
								<li><a class="dropdown-item" href="../dropmenu/join.jsp">Sign up</a></li>
							<%
								} else {
							%>
								<li><a class="dropdown-item" href="../dropmenu/login.jsp">정보수정</a></li>
								<li><a class="dropdown-item" href="master.jsp">클랜관리</a></li>
								<li><a class="dropdown-item" href="../action/logoutAction.jsp">로그아웃</a></li>
							<%
								}
							%>
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

      <section class="menu-section">
          <div class="clan-rank">
		<div class="container">
			<div class="section-title">
				<h3><i class="fa-solid fa-trophy"></i> <span>clan rank</span></h3>
			</div>
			<table id="rank-table" class="rank-table table table-dark table-hover table-striped table-bordered border-info">
				<thead>
                          <tr> 
                              <th>Rank</th>
                              <th>ID</th>
                              <th style="width: 5%;">Elo</th>
                              <th style="width: 10%;">Total</th>
                              <th style="width: 7.5%;">vs T</th>
                              <th style="width: 7.5%;">vs P</th>
                              <th style="width: 7.5%;">vs Z</th>
                          </tr>
				</thead>
				<tbody>
                          <tr>
                              <th>1</th>
                              <td>33UpGoliath</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>2</th>
                              <td>Jacob</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>3</th>
                              <td>Larry the Bird</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>4</th>
                              <td>Mark</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>5</th>
                              <td>Jacob</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>6</th>
                              <td>Larry the Bird</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>7</th>
                              <td>Mark</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>8</th>
                              <td>Jacob</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>9</th>
                              <td>Larry the Bird</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
                          <tr>
                              <th>10</th>
                              <td>Larry the Bird</td>
                              <td>1500</td>
                              <td>0 전 0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                              <td>0 승 0 패 승률 0%</td>
                          </tr>
				</tbody>
			</table>
		</div>
	</div>
      </section>

<footer class="py-3">
	<div class="container">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item">
				<a class="nav-link px-2 text-muted" href="notice.jsp">공지사항</a>
			</li>
			<li class="nav-item">
				<a class="nav-link px-2 text-muted" href="member.jsp">클랜원</a>
			</li>
			<li class="nav-item">
				<a class="nav-link px-2 text-muted active" href="rank.jsp">클랜랭킹</a>
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
<script src="../../js/main.js"></script>
</body>
</html>