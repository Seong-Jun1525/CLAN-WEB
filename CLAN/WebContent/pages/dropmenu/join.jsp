<%@ page import="java.io.PrintWriter"%>
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
	if(memberID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 된 상태 입니다.')");
		script.println("location.href = '../../index.jsp'");
		script.println("</script>");
		script.close();
		return;
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
						<a class="nav-link" href="../menu/notice.jsp">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="../menu/member.jsp">클랜원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="../menu/rank.jsp">클랜랭킹</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="../menu/game.jsp">경기기록</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							회원관리
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="login.jsp">Sign in</a></li>
							<li><a class="dropdown-item active" href="join.jsp">Sign up</a></li>
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

      <section>
          <div class="container">
              <div class="join shadow rounded">
                  <div class="section-title">
                      <h3><i class="fa-solid fa-users"></i> <span>Sign up</span></h3>
                  </div>
                  <div class="section-content">
                      <form method="post" name="join-form" action="../action/memberRegisterAction.jsp">
                          <div class="join-area id">
                              <h5>아이디</h5>
                              <div class="form-floating mb-3">
                                  <input type="text" class="form-control" id="memberID" name="memberID" placeholder="ID">
                                  <label for="floatingInput">ID</label>
                              </div>
                              <div>
                              	  <button type="button" class="btn btn-info" onclick="registerClickFunction();">중복체크</button>
                              </div>
                          </div>
                          <div class="join-area pw">
                              <h5>비밀번호</h5>
                              <div class="form-floating">
                                  <input onkeyup="passwordCheckFunction();" type="password" class="form-control" id="memberPW1" name="memberPW1" placeholder="Password">
                                  <label for="floatingPassword">Password</label>
                              </div>
                          </div>
                          <div class="join-area pw">
                              <h5>비밀번호 확인</h5>
                              <div class="form-floating">
                                  <input onkeyup="passwordCheckFunction();" type="password" class="form-control" id="memberPW2" name="memberPW2" placeholder="Password">
                                  <label for="floatingPassword">Password</label>
                              </div>
                          </div>
                          <div class="join-area email">
                              <h5>이메일</h5>
                              <div class="form-floating mb-3">
                                  <input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="name@example.com">
                                  <label for="floatingInput">Email address</label>
                              </div>
                          </div>
                          <div class="join-area tribe">
                              <h5>종족선택</h5>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="tribe" id="terran" value="T">T
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="tribe" id="protoss" value="P">P
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="tribe" id="zerg" value="Z">Z
                              </div>
                          </div>
                          <div class="join-area score">
                              <h5>래더점수</h5>
                              <div class="form-floating mb-3">
                                  <input type="text" class="form-control" id="ladderScore" name="ladderScore" placeholder="1500">
                                  <label for="floatingInput">래더점수</label>
                              </div>
                          </div>
                          <div class="join-area button">
                              <h5 style="color: red;" id="passwordCheckMessage"></h5>
                              <button type="submit" class="float-end mt-2 btn btn-primary">Sign up</button>
                          </div>
                      </form>
                  </div>
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
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<%= messageContent %>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
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
<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="vertical-alignment-helper">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div id="checkType" class="modal-header card-header">
					<h4 class="modal-title">
						확인 메시지
					</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
					</button>
				</div>
				<div id="checkMessage" class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        			<button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript">
	function registerClickFunction() {
		var memberID = $('#memberID').val();
		$.ajax({
			type: 'POST',
			url: '../../MemberRegisterCheckServlet',
			data: {memberID: memberID},
			success: function(result) {
				if(result == 1) {
					$('#checkMessage').html('사용할 수 있는 아이디입니다.');
					$('#checkType').attr('class', 'modal-header bg-success text-white');
				}
				else if(result == -1) {
					$('#checkMessage').html('DB오류입니다.');
					$('#checkType').attr('class', 'modal-header bg-warning text-dark');
				}
				else {
					$('#checkMessage').html('사용할 수 없는 아이디입니다.');
					$('#checkType').attr('class', 'modal-header bg-warning text-dark');
				}
				$('#checkModal').modal("show");
			}
		});
	}
	function passwordCheckFunction() {
		var memberPW1 = $('#memberPW1').val();
		var memberPW2 = $('#memberPW2').val();
		
		if(memberPW1 != memberPW2) {
			$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
		}
		else {
			$('#passwordCheckMessage').html('');
		}
	}
	
	$('#messageModal').modal('show')
</script>
</body>
</html>