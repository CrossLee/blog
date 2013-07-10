<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@font-face {
  font-family: "Open Sans";
  src: url("/image/font/OpenSans-Regular.ttf");
}

.bodyclass{
	margin: 0px;
	overflow: hidden;
}

.left {
	width: 300px;
	position: absolute;
	left: 7%;
	top: 30px;
	text-align: right;
}

.menu {
	margin-bottom: 30px;
	font-size: 14px;
	font-weight: normal;
	text-align: right;
	color: #222;
	text-shadow: 0px 2px 3px #555;
	cursor: pointer;
}

.menu a{
	text-decoration:none; 
	color: #222;
}

.frame{
	width: 100%;
	height: 100%;
	border: 0px;
}

#site-title a{
	color: #C0C0C0;
    font-family: "Trade Winds","Abel","Helvetica Neue",Helvetica,Arial,Sans-serif;
    font-size: 35px;
    font-weight: bold;
    line-height: 55px;
    text-decoration: none;
}

#site-title a:hover{
	color: #5191C2;
}

@font-face {
  font-family: "Trade Winds";
  src: url("./image/font/TradeWinds-Regular.ttf");
}


#site-description {
    color: #C0C0C0;
    font-size: 14px;
    font-weight: normal;
    text-align: right;
}
</style>

<script src="./js/jquery-1.7.js" type="text/javascript" charset="utf-8" ></script>
<script type="text/javascript">
Home = {};

Home.hideAll = function(){
	$("#iframe").contents().find("div[class=right_content]").hide();
	$("#iframe").contents().find("#photos").hide();
	$("#iframe").contents().find("#weibo").hide();
	$("#iframe").contents().find("#github").hide();
	$("#iframe").contents().find("#about").hide();
	
};

Home.home = function(){
	window.location.href = "http://cross.withiter.com";
};
Home.photos = function(){
	alert("Under Construction, coming soon..");
};
Home.weibo = function(){
	Home.hideAll();
	$("#iframe").contents().find("#weibo").show();
};
Home.github = function(){
	window.location.href = "https://github.com/CrossLee";
};
Home.about = function(){
	Home.hideAll();
	$("#iframe").contents().find("#about").show();
};
</script>

<title>CROSS'S WEBSITE</title>
</head>
<body class="bodyclass">
	<iframe id="iframe" class="frame" src="index.jsp"></iframe>
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
	</div>
</body>
</html>