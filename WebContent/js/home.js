Home = {};

Home.hideAll = function(){
	$("#iframe").contents().find("div[class=right_content]").hide();
	$("#iframe").contents().find("#photos").hide();
	$("#iframe").contents().find("#weibo").hide();
	$("#iframe").contents().find("#github").hide();
	$("#iframe").contents().find("#about").hide();
	$("#iframe").contents().find("#admin").hide();
	
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
Home.admin = function(){
	Home.hideAll();
	$("#iframe").contents().find("#admin").show();
};