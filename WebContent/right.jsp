<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./js/jquery-1.7.js" type="text/javascript" charset="utf-8"></script>
<script src="./js/right.js" type="text/javascript" charset="utf-8"></script>
<link href="css/right.css" rel="stylesheet" type="text/css" />

<title>CROSS'S WEBSITE</title>
</head>
<body id="body">
	<div style="display: none;" id="break_line"></div>

	<div id="weibo" class="about">
		<div class="profile_items_long">
			<font>Sina Weibo ： <a href="http://weibo.com/withiter"
				target="_blank"><img class="link_image" alt="GitHub"
					src="./image/weibo.png"></a></font>
			<hr />
			<font>Twitter ： <a href="https://twitter.com/Withiter"
				target="_blank"><img class="link_image" alt="GitHub"
					src="./image/twitter.png"></a></font> <br />
		</div>
	</div>

	<div id="about" class="about">
		<img style="position: absolute;; top: 0px; right: 0px;" width="240px"
			height="300px;" alt="Cross Lee" src="./image/me.png">
		<div class="profile_items">
			<font class="about_title">Who Am I</font>
			<hr />
			<font class="key">I'm Cross. <br /> What does "Cross" mean, <br />
				To cover or extend over an area
			</font><br />
		</div>
		<div class="profile_items">
			<font class="about_title">Path</font>
			<hr />
			<font class="key"> In 1987, I was born in Yangzhou, Jiangsu.
				Graduated from JIT 2006. </font><br />
		</div>
		<div class="profile_items_long">
			<font class="about_title">Project</font>
			<hr />
			<font class="key"> Multimedia publishing platform: CPS ·
				CPSMini<br /> WEBDIY: Intepub · IntepubWeb<br /> Website: CROSS'S
				WEB
			</font><br />
		</div>
		<div class="profile_items_long">
			<font>Link</font>
			<hr />
			<font class="key"> <a href="https://github.com/CrossLee"
				target="_blank"><img align="top" class="link_image" alt="GitHub"
					src="./image/github.png"></a> <a
				href="https://twitter.com/Withiter" target="_blank"><img
					align="top" class="link_image" alt="Twitter"
					src="./image/twitter.png"></a> <a
				href="https://www.facebook.com/cross.lee.58" target="_blank"><img
					align="top" class="link_image" alt="Facebook"
					src="./image/facebook.png"></a> <a
				href="http://weibo.com/withiter" target="_blank"><img
					align="top" class="link_image" alt="Sina Weibo"
					src="./image/weibo.png"></a> <a
				href="http://blog.csdn.net/huxiweng" target="_blank"><img
					align="bottom" class="link_image"
					style="width: 20px; height: 18px; margin-top: 3px" alt="CSDN Blog"
					src="./image/blogger.png"></a>
			</font><br />
		</div>
		<div class="profile_items_long">
			<font class="about_title">Contact</font>
			<hr />
			<font class="key"> Mail: mag_lee@126.com<br /> QQ: 343642038<br />
			</font><br />
		</div>
	</div>
	<div id="admin" class="about">
		<div class="profile_items_long">
			<font>Password ： <input type="password" id="password" value="" /> <a class="right_button" href="javascript:void(0);" onclick="javascript:Right.validate();">Submit</a></font>
		</div>
	</div>
</body>
</html>

<script type="text/javascript">
Right.init();
</script>