<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/home.css" rel="stylesheet" type="text/css" />
<script src="./js/jquery-1.7.js" type="text/javascript" charset="utf-8" ></script>
<script src="./js/home.js" type="text/javascript" charset="utf-8" ></script>

<title>CROSS'S WEBSITE</title>
</head>
<body class="bodyclass">
	<iframe id="iframe" class="frame" src="right.jsp"></iframe>
	<div class="left">
		<h1 id="site-title">
			<a title="CROSS'S WEB" href="http://cross.withiter.com">CROSS'S WEB</a>
		</h1>
		<h2 id="site-description"> Here's my website :) </h2>
		<div class="menu"><a href="javascript:Home.home();">Home</a></div>
		<div class="menu"><a href="javascript:Home.photos();">Photo</a></div>
		<div class="menu"><a href="javascript:Home.weibo();">WeiBo</a></div>
		<div class="menu"><a href="javascript:Home.github();">GitHub</a></div>
		<div class="menu"><a href="javascript:Home.about();">About</a></div>
		<div class="menu"><a href="javascript:Home.admin();">Admin</a></div>
	</div>
</body>
</html>