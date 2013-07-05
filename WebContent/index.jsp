<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
	background-image: url('./image/bg.png');
	background-repeat: repeat;
	background-attachment: fixed;
	min-height: 100%;
}

.content {
	width: 700px;
	position: absolute;
	left: 34%;
	top: 60px;
	min-height: 700px;
	background: none repeat scroll 0 0 white;
	box-shadow: 0 0 10px rgba(200, 200, 200, 0.8);
	margin: 0 0 1.625em;
	padding: 0 0 1.625em;
}

.about {
	display: none;
	width: 700px;
	position: absolute;
	left: 34%;
	top: 60px;
	min-height: 700px;
	margin-bottom: 30px;
	font-size: 30px;
	font-weight: normal;
	text-align: left;
	color: #222;
	text-shadow: 0px 2px 3px #555;
}

.right {
	position: relative;
	left: 30px;
	top: 60px;
}

.key {
	margin-right: 10px;
	font-size: 20px;
}

.profile_items {
	position: relative;
	width: 420px;
	margin-bottom: 40px;
}

.profile_items_long {
	position: relative;
	width: 100%;
	margin-bottom: 40px;
}

.link_image{
	width: 26px;
	height: 26px;
	margin-right: 30px;
}

</style>
<title>CROSS'S WEBSITE</title>
</head>
<body>
	<div id="content" class="content">
		<div class="right">
			It is coming soon..
		</div>
	</div>
	
	<div id="weibo" class="about">
		<div class="profile_items_long">
			<font>Sina Weibo ： <a href="http://weibo.com/withiter" target="_blank"><img class="link_image" alt="GitHub" src="./image/weibo.png"></a></font>
			<hr/>
			<font>Twitter ： <a href="https://twitter.com/Withiter" target="_blank"><img class="link_image" alt="GitHub" src="./image/twitter.png"></a></font>
			<br/>
		</div>
	</div>
	
	<div id="about" class="about">
		<img style="position:absolute; ;top: 0px;right: 0px;" width="240px" height="300px;" alt="Cross Lee" src="./image/me.png">
		<div class="profile_items">
			<font>Who Am I</font>
			<hr/>
			<font class="key">I'm Cross. <br/>
			What does "Cross" mean, <br/>
			To cover or extend over an area</font><br/>
		</div>
		<div class="profile_items">
			<font>Path</font>
			<hr/>
			<font class="key">
				In 1987, I was born in Yangzhou, Jiangsu. Graduated from JIT 2006.
			</font><br/>
		</div>
		<div class="profile_items_long">
			<font>Project</font>
			<hr/>
			<font class="key">
				Multimedia publishing platform: CPS · CPSMini<br/>
				WEBDIY: Intepub · IntepubWeb<br/>
				Website: CROSS'S WEB
			</font><br/>
		</div>
		<div class="profile_items_long">
			<font>Link</font>
			<hr/>
			<font class="key">
				<a href="https://github.com/CrossLee" target="_blank"><img class="link_image" alt="GitHub" src="./image/github.png"></a>
				<a href="https://twitter.com/Withiter" target="_blank"><img class="link_image" alt="GitHub" src="./image/twitter.png"></a>
				<a href="https://www.facebook.com/cross.lee.58" target="_blank"><img class="link_image" alt="GitHub" src="./image/facebook.png"></a>
				<a href="http://weibo.com/withiter" target="_blank"><img class="link_image" alt="GitHub" src="./image/weibo.png"></a>
			</font><br/>
		</div>
	</div>
</body>
</html>