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
	input[readonly]{
	background: #ddd;
	}
</style>
</head>
<body>
  <main>
	<h2>사용자 등록</h2>
	<form action="/Users/Write" method="GET">
	<table>
	<tr>
	   <td> 아이디</td>
	   <td><input type="text" name="userid" /></td>
	 </tr>
	 <tr>
	   <td> 이름</td>
	   <td><input type="text" name="username" /></td>
	 </tr>
	 <tr>
	   <td> 비밀번호</td>
	   <td><input type="text" name="passwd" /></td>
	 </tr>
	 
	 <tr>
	   <td>이메일</td>
	   <td><input type="text" name="email" /></td>
	 </tr>
	 <tr>
	   <td>포인트</td>
	   <td><input type="text" name="upoint" value ="1000" readonly="readonly"/></td>
	 </tr>
	 <tr>
	   <td>가입일</td>
	   <td><input type="text" name="indate" value ="${now}"  readonly="readonly" /></td>
	 </tr>
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="추가" />
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





