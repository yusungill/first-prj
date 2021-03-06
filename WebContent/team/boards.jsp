<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<script src="../js/index.js"></script>
<link href="../css/reset.css" type="text/css" rel="stylesheet">
<link href="../css/style.css" type="text/css" rel="stylesheet">
<title>메모보드</title>
</head>

<body>
	<header class="header">
		<h1 class="logo">
			<a href="/index">
				<img src="../images/logo.png" alt="메모보드">
			</a>
		</h1>
		<section class="header-container">
			<h1 class="d-none">헤더</h1>
			<nav>
				<h1 class="d-none">메뉴</h1>
				<ul class="left-menu">
					<li><a href="index">홈</a></li>
					<li class="board-btn">
						<span></span> 
						<span>보드</span>
					</li>
				</ul>
			</nav>
			<nav>
				<h1 class="d-none">메뉴</h1>
				<ul class="right-menu">
					<li>알림</li>
					<li>프로필</li>
				</ul>
			</nav>
		</section>
	</header>
	
    <section class="profile-header">
            <h1 class="d-none">팀 디테일 메인</h1>
        <section class="team-profile-section">
            <h1 class="d-none">팀명</h1>
            <div class="team-profile">
                <img src="../images/team-image.png" alt="">
                <div class="profile-info">                
                    <div class="profile-name">
						<b>${team.name}</b> (팀장:  ${leader.uid})
                    </div>
                </div>
            </div>
        </section>

        <section class="team-menus-wrap">
            <h1 class="d-none">디테일 메뉴</h1>
            <ul class="team-menus">
                <li class="menu"><a href="boards">보드</a></li>
				<li class="menu"><a href="members">멤버</a></li>
				<li class="menu"><a href="teams">팀</a></li>
            </ul>
        </section>
    </section>

	<main class="team-detail-main">
		<div class="boards-wrap team-main-wrap">
			<div class="boards-list">
				<c:forEach var="board" items="${teamBoards}" varStatus="st">
					<div class="team-detail-board">
						<span>보드이름 : ${board.name}</span>
						<span>만든이 : ${boardMaker[st.index].uid} </span>
					</div>
				</c:forEach>
			</div>
		</div>

	</main>
</body>


</html>