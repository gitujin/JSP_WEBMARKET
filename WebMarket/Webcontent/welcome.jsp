<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Welcome</title>
</head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<body>
	<%@ page import="java.util.Date" %>
	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
	<%@ include file = "menu.jsp" %>
	<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "welcome to Web Market!" ;%>
	<div class = "jumbotron">
		<div class = "container">
				<h1 class = "display-3">
					<%= greeting %>
				</h1>
		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<h3>
				<%= tagline %>
			</h3>
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour / 12 == 0){
					am_pm = "AM";
				}else{
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속 시각: " + CT + "\n");
			%>
		</div>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>