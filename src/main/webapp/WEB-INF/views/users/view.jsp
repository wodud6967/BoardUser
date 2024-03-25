<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
   table{
   	width: 80%;
   }
	td:not([colspan]):first-child {
	background: black;
	color:white;
	font-weight: bold;
}
</style>
</head>
<body>
  <main>
	<h2>사용자 상세 정보</h2>
	
	<table>
	 <tr>
	   <td>아이디</td>
	   <td>${vo.userid}</td>
	 </tr>
	 <tr>
	   <td>이름</td>
	   <td>${vo.username}</td>
	 </tr>
	 <tr>
	   <td>비밀번호</td>
	   <td>${vo.passwd}</td>
	 </tr>
	 <tr>
	   <td>이메일</td>
	   <td>${vo.email}</td>
	 </tr>
	 <tr>
	   <td>포인트</td>
	   <td>
	   		<c:choose>
		   		<c:when test ="${vo.upoint ne 0}"> 
		   			${vo['upoint']}
		   		</c:when>
	   		</c:choose> 
	   </td>
	 </tr><tr>
	   <td>포인트</td>
	   <td>${vo.upt}</td>
	 </tr>
	  <tr>
	   <td>가입일</td>
	   <td>${vo.indate}</td>
	 </tr>
	 <tr>
	   <td colspan="2">
	   <a class="btn btn-primary" href ="/Users/WriteForm">회원가입</a>
	   <a class="btn btn-primary" href ="/Users/UpdateForm?userid=${vo.userid}">회원수정</a>
	   <a class="btn btn-primary" href ="/Users/Delete?userid=${vo.userid} ">회원삭제</a>
	   <a class="btn btn-primary" href ="/Users/List">회원목록</a>
	   <a class="btn btn-primary" href ="/">home</a>
	   
	   
	   </td>
	 </tr>
	</table>	
  	
	
  </main>
  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>  
</body>
</html>





