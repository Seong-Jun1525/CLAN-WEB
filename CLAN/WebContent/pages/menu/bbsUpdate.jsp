<%@page import="bbs.BbsDTO"%>
<%@page import="bbs.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="member.MemberDAO"%>
<%@ page import="member.MemberDTO"%>
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
	
	if(memberID == null) {
		session.setAttribute("messageType", "오류 메시지");
		session.setAttribute("messageContent", "현재 로그인이 되어있지 않습니다.");
		response.sendRedirect("../../index.jsp");
		return;
	}
	
	MemberDTO member = new MemberDAO().getMember(memberID);
	
	String bbsID = request.getParameter("bbsID");
	if(bbsID == null || bbsID.equals("")) {
		session.setAttribute("messageType", "오류 메시지");
		session.setAttribute("messageContent", "접근할 수 없습니다.");
		response.sendRedirect("../../index.jsp");
		return;
	}
	
	BbsDAO bbsDAO = new BbsDAO();
	BbsDTO bbs = bbsDAO.getBbs(bbsID);
	
	if(!memberID.equals(bbs.getMemberID())) {
		session.setAttribute("messageType", "오류 메시지");
		session.setAttribute("messageContent", "접근할 수 없습니다.");
		response.sendRedirect("../../index.jsp");
		return;
	}
	
%>
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
						<a class="nav-link active" href="notice.jsp">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="member.jsp">클랜원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="rank.jsp">클랜랭킹</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="game.jsp">경기기록</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							회원관리
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="../dropmenu/login.jsp">정보수정</a></li>
							<li><a class="dropdown-item" href="master.jsp">클랜관리</a></li>
							<li><a class="dropdown-item" href="../action/logoutAction.jsp">로그아웃</a></li>
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
	<div class="clan-write">
		<div class="container">
			<div class="section-title">
				<h3><i class="fa-solid fa-clipboard-list"></i> <span>게시판 수정 양식</span></h3>
			</div>
			<table class="table table-secondary" style="text-align: center; border: 1px solid #000;">
				<thead>
					<tr>
						<th colspan="4"><h4>게시물 보기</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><h5>아이디</h5></td>
						<td><h5><%= member.getMemberID() %></h5>
						<input type="hidden" name="memberID" value="<%= member.getMemberID() %>">
						<input type="hidden" name="bbsID" value="<%= bbsID %>"></td>
					</tr>
					<tr>
						<td><h5>글 제목</h5></td>
						<td><input class="form-control" type="text" maxlength="50" name="bbsTitle" placeholder="글 제목을 입력하세요." value="<%= bbs.getBbsTitle() %>"></td>
					</tr>
					<tr>
						<td><h5>글 내용</h5></td>
						<td><textarea class="form-control" rows="10" name="bbsContent" maxlength="2048" placeholder="글 내용을 입력하세요."><%= bbs.getBbsContent() %></textarea></td>
					</tr>
					<tr>
						<td><h5>파일 업로드</h5></td>
						<!-- onkeyup은 어떤 메시지를 입력할 때마다 실행됨 -->
						<td colspan="2">
							<input type="file" name="boardFile" class="file">
							<div class="input-group col-12">
								<span class="input-group-text"><i class="fas fa-image"></i></span>
								<input type="text" class="form-control form-control-lg" disabled placeholder="<%= bbs.getBbsFile() %>">
								<span class="input-group-btn">
									<button class="browse btn btn-primary form-control-lg" type="button"><i class="fas fa-search"></i>파일 찾기</button>
								</span>
							</div>
						</td>
					</tr>
					<tr>
						<td><h5>글 내용</h5></td>
						<td style="text-align: left;"><h5><%= bbs.getBbsContent() %></h5></td>
					</tr>
					<tr>
						<td><h5>첨부파일</h5></td>
						<td colspan="3"><h5><a href="../action/bbsDownload.jsp?boardID=<%= bbs.getBbsID() %>"><%= bbs.getBbsFile() %></a></h5></td>
					</tr>
					<tr>
						<td style="text-align: left;" colspan="3"><h5 style="color: red;"></h5><button type="submit" class="btn btn-info float-end">수정</button></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
<%
	String messageContent = null;
	if(session.getAttribute("messageContent") != null) {
		messageContent = (String) session.getAttribute("messageContent");
	}
	
	String messageType = null;
	if(session.getAttribute("messageType") != null) {
		messageType = (String) session.getAttribute("messageType");
	}
	
	if(messageContent != null) {
%>
		<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="vertical-alignment-helper">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header card-header <% if(messageType.equals("오류 메시지")) out.println("bg-warning text-dark"); else out.println("bg-success text-white"); %>">
							<h4 class="modal-title">
								<%= messageType %>
							</h4>
							<button type="button" class="close" aria-label="Close">
							  	<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<%= messageContent %>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
<%
		/* messageContent와 messageType은 서버로 부터 받은 어떠한 세션 값이다 */
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
	}
%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<script>
	$('#messageModal').modal('show')
	
	$(document).on('click', '.browse', function() {
		var file = $(this).parent().parent().parent().find('.file')
		file.trigger('click')
	})
	
	$(document).on('change', '.file', function() {
		$(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''))
	})
</script>
</body>
</html>