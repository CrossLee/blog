<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./js/jquery-1.7.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
body {
	background-image: url('./image/bg.png');
	background-repeat: repeat;
	background-attachment: fixed;
	min-height: 100%;
}

.right_content {
	width: 700px;
	position: relative;
	left: 34%;
	top: 60px;
	float:left;
	display:inline-block;
	min-height: 300px;
	background: none repeat scroll 0 0 white;
	box-shadow: 0 0 10px rgba(200, 200, 200, 0.8);
	margin: 0 0 1.625em;
	padding: 0 0 1.625em;
	padding-bottom: 100px;
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
	left: 40px;
	top: 60px;
	width: 620px;
}

.key {
	margin-right: 10px;
	font-size: 20px;
}

.profile_items {
	position: relative;
	width: 420px;
	margin-bottom: 20px;
}

.profile_items_long {
	position: relative;
	width: 100%;
	margin-bottom: 40px;
}

.link_image {
	width: 26px;
	height: 26px;
	margin-right: 30px;
}

.about_title {
	font-weight: bolder;
}

.title{
	font-size: large;
	font: bold;
}

.date{
	font-size: small;
	font: normal;
	color: gray;
}

.tag{
	font-size: small;
	font: normal;
	color: gray;
}

.content{
	
}

</style>

<title>CROSS'S WEBSITE</title>
</head>
<body>
	<div id="content" class="right_content">
		<div class="right">
			<!-- 
			It is coming soon..It is coming soon..It is coming soon..It is co ming soon..It is coming soon..It is coming soon..It is coming soon..It is coming soon..It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			It is coming soon..<br/>
			 -->
			<form action="/blog/AddArticle" method="post">
				title:<input name="title" /> content:<input name="content" /> tag:<input
					name="tag" /> <input type="submit">
			</form>
		</div>
	</div>
	
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
</body>
</html>

<script type="text/javascript">
	$.ajax({
		type : "POST",
		url : "/blog/services/root/loadArticles",
		dataType : "json",
		async : false,
		success : function(data) {
			$.each(data.articleVO, function(i, item){
				buildArticle(item);
			});
		},
		error : function() {
			alert("error!");
		}
	});
	
	function buildArticle(item){
		var cotentDiv = document.createElement("div");
		$(cotentDiv).addClass("right_content");
		
		var articleDiv = document.createElement("div");
		$(articleDiv).addClass("right");
		
		var titleDiv = document.createElement("div");
		$(titleDiv).text(item.title).addClass("title");
		
		var dateDiv = document.createElement("div");
		$(dateDiv).text(item.date).addClass("date");
		
		var tagDiv = document.createElement("div");
		$(tagDiv).text(item.tag).addClass("tag");
		
		var contentDiv = document.createElement("div");
		$(contentDiv).text(item.content).addClass("content");
		
		articleDiv.appendChild(titleDiv);
		articleDiv.appendChild(dateDiv);
		articleDiv.appendChild(tagDiv);
		articleDiv.appendChild(contentDiv);
		$(cotentDiv).append(articleDiv);
		
		$("#break_line").before(cotentDiv);
	}
</script>