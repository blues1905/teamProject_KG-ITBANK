<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="ko">
<head>
<meta charset="UTF-8">
<!--<title> Drop Down Sidebar Menu | CodingLab </title>-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/work.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/calendar/core/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/calendar/daygrid/main.css">
<script src="${pageContext.request.contextPath}/resources/css/calendar/core/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/css/calendar/daygrid/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/css/calendar/core/locales/ko.js"></script>
<script src="${pageContext.request.contextPath}/resources/css/calendar/schedule.js"></script>
<!-- Boxiocns CDN Link -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TASKWITH</title>
</head>
<body>
	<nav class="shadow">
		<div id="blogMenu">
			<ul>
				<li style="height: 40px; width: 40px; margin-right: 10px;"><a
					href="#"><img
						src="${pageContext.request.contextPath}/resources/images/vert.png"
						style="height: 40px; width: 40px; margin-top: 15px;"></a>
					<ul style="width: 230px;">
						<li><a
							href="${pageContext.request.contextPath}/space/space">워크스페이스
								메인으로</a></li>
						<li><a href="${pageContext.request.contextPath}/member/login">로그아웃</a></li>
					</ul>
			</ul>
		</div>
		<h3>서현진 님</h3>
		<div class="navbar">
			<div class="nav-links">
				<ul class="links">
					<li
						style="color: white; font-size: 30px; margin-top: 3px; margin-left: 120px;">새
						워크스페이스1</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="sidebar close">
		<div class="logo-details"
			style="font-size: 50px; margin-left: 12px; margin-top: 15px;">
			<a href="${pageContext.request.contextPath}/space/space"> <i
				class='fas fa-arrow-circle-left' style="color: white;"></i>
			</a> <img class="logo"
				src="${pageContext.request.contextPath}/resources/images/workspace.png"
				style="height: 35px; width: 35px; margin-bottom: 15px; margin-left: 10px;">
			<span class="logo_name" style="font-size: 30px; margin-bottom: 15px;">TASKWITH</span>
		</div>
		<ul class="nav-links">

			<li>
				<div class="iocn-link">
					<a href="#" style="height: 70px;"> <i class='bx bx-task'
						style="margin-bottom: 5px;"></i> <span class="link_name"
						style="font-size: 30px;">작업관리</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">작업관리</a></li>
					<li><a href="${pageContext.request.contextPath}/work/workBoard" style="font-size: 20px;">게시판</a></li>
					<li><a href="${pageContext.request.contextPath}/work/workCalendar" style="font-size: 20px;">캘린더</a></li>
					<li><a href="${pageContext.request.contextPath}/work/workKanban" style="font-size: 20px;">칸반보드</a></li>
				</ul>
			</li>
			<li>
				<div class="iocn-link">
					<a href="#" style="height: 70px;"> <i
						class='bx bx-cloud-download' style="margin-bottom: 5px;"></i> <span
						class="link_name" style="font-size: 30px;">파일관리</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">파일관리</a></li>
					<li><a href="#" style="font-size: 20px;">파일브라우저</a></li>
				</ul>
			</li>
			<li>
				<div class="iocn-link">
					<a href="#" style="height: 70px;"> <i class='bx bx-message'
						style="margin-bottom: 5px;"></i> <span class="link_name"
						style="font-size: 30px;">메신저</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">메신저</a></li>
					<li><a href="#" style="font-size: 20px;">단체 톡방</a></li>
					<li><a href="#" style="font-size: 20px;">개인 톡방</a></li>
					<li><a href="#" style="font-size: 20px;">추가</a></li>
				</ul>
			</li>

		</ul>
	</div>
	<section class="home-section">
		<div class="home-content">
			<i class='bx bx-menu'
				style="color: white; z-index: 10000; margin-top: 10px"></i>
		</div>
			<div id="calendar" style="margin-top: 20px; margin-left: 100px; width:850px;font-size:100%;">
				<button type="button" onclick="click_add();" style="float:right;width:80px;
					height:40px;font-size:80%;border-radius:10px;">일정 추가</button>
		</div>
	</section>
	<script>
	  let arrow = document.querySelectorAll(".arrow");
	  for (var i = 0; i < arrow.length; i++) {
	    arrow[i].addEventListener("click", (e)=>{
	   let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
	   arrowParent.classList.toggle("showMenu");
	    });
	  }
	  let sidebar = document.querySelector(".sidebar");
	  let sidebarBtn = document.querySelector(".bx-menu");
	  console.log(sidebarBtn);
	  sidebarBtn.addEventListener("click", ()=>{
	    sidebar.classList.toggle("close");
	  });
	  
  document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendar');

	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
	      header: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
	      },
	      navLinks: true, // can click day/week names to navigate views
	      businessHours: true, // display business hours
	      editable: true,
	      locale: "ko"
	      
	    });

	    calendar.render();
	  });


  </script>
</body>
</html>