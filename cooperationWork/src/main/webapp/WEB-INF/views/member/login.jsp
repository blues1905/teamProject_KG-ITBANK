<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0038)http://localhost:8080/dto/member/login -->
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="${pageContext.request.contextPath}/resources/member/login.css" rel="stylesheet" type="text/css">
</head>
<body>
	<title>로그인</title>
	<%@ include file="../include/menu.jsp" %>

    <div class="container-fluid p-5 mt-5 text-center">
                <div class="card login-form border-0">
                    <div class="card-body">
				        <h1>TASKWITH</h1><br><br>
                        <form th:action="@{#}" method="POST" class="form-signin">
                            <input type="text" id="username" name="username" placeholder="ID를 입력하세요" class="form-control my-3 login-text" style="margin:auto; width:300px;" autofocus>
                            <input type="password" placeholder="PW를 입력하세요" id="password" name="password" class="form-control mb-3 login-text" style="margin:auto; width:300px;">
                    		<div class="checkbox">
          						<label>
            						<input type="checkbox" value="rememberId"> 아이디 기억하기
          						</label>
        					</div>
        					<br>
        					<div th:if="">
                                <p class="error-message" th:text="">아이디 혹은 비밀번호가 맞지 않습니다. 다시 확인해 주십시오.</p>
                            </div>
                            <br>
                      		<a href="#" style="margin-right:10px;">아이디 찾기</a><a href="#" style="margin-left:10px;">비밀번호 찾기</a><br><br>
                    		
                            <button class="btn" name="Submit" value="Login" type="Submit" th:text="Login">로그인</button>
                            <a class="btn" type="button" th:text="Regist" style="color:white;">회원가입</a>
                        </form>
                    </div>
                </div>
        </div>

	</body>
</html>