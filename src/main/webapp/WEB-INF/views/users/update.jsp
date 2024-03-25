<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<style>
    /*  */
 	input[type="text"]{
 		width: 100%;
 	}
 	
 	tr:last-child td{
 		display: flex;
 		justify-content: space-around;
 	}
 	tr:last-child td input{
 		width: 40%
 	}
	td{
		padding: 10px;
		width: 700px;
	}
	td:nth-of-type(1) {
	width: 200px;
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
	<h2>메뉴 수정</h2>
	<form action="/Users/Update" method="GET">
	<table>
	 <tr>
	   <td>회원 아이디</td>
	   <td><input type="text" name="userid"  value ="${vo.userid}" readonly="readonly"/></td>
	 </tr>
	 <tr>
	   <td>회원 이름</td>
	   <td><input type="text" name="username" value = "${vo.username}" /></td>
	 </tr>
	 <tr>
	   <td>회원 비밀번호</td>
	   <td><input type="text" name="passwd" value = "${vo.passwd}"/></td>
	 </tr>
	 <tr>
	   <td>회원 이메일</td>
	   <td><input type="text" name="email" value = "${vo.email}"/></td>
	 </tr>
	 <tr>
	   <td>회원 포인트</td>
	   <td><input type="number" name="upoint" value = "${vo.upoint}"/></td>
	 </tr>
	  <tr>
	   <td>가입일</td>
	   <td><input type="text" name="indate" value = "${vo.indate}" readonly="readonly"/></td>
	 </tr>
	 
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="수정" />
	    <input type="button" value="목록" id="golist" />
	   </td>
	 </tr>
	
	</table>	
	</form>   
	
  </main>
  
  <script>
  	const goListEl = document.getElementById('golist');
  	goListEl.addEventListener('click',function(e){
  		location.href ="/Users/List";
  	})
  </script>
</body>
</html>





