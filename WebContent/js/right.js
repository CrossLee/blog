Right = {};

Right.init = function(){
	$.ajax({
		type : "POST",
		url : "/blog/services/root/loadArticles",
		dataType : "json",
		async : false,
		success : function(data) {
			if(data!=null){
				if(data.articleVO.title != null){
					Right.buildArticle(data.articleVO);
				}else{
					$.each(data.articleVO, function(i, item){
						Right.buildArticle(item);
					});
				}
			}
		},
		error : function() {
			alert("error!");
		}
	});
};

Right.buildArticle = function(item){
	var cotentDiv = document.createElement("div");
	$(cotentDiv).addClass("right_content");
	
	var articleDiv = document.createElement("div");
	$(articleDiv).addClass("right");
	
	var titleDiv = document.createElement("div");
	$(titleDiv).text(item.title);
	$(titleDiv).addClass("title");
	
	var dateDiv = document.createElement("div");
	$(dateDiv).text("Posted on "+item.date);
	$(dateDiv).addClass("date");
	
	var tagDiv = document.createElement("div");
	$(tagDiv).text("Tags "+item.tag);
	$(tagDiv).addClass("tag");
	
	var contentDiv = document.createElement("div");
	$(contentDiv).text(item.content);
	$(contentDiv).addClass("content");
	
	articleDiv.appendChild(titleDiv);
	articleDiv.appendChild(dateDiv);
	articleDiv.appendChild(tagDiv);
	articleDiv.appendChild(contentDiv);
	$(cotentDiv).append(articleDiv);
	
	$("#break_line").before(cotentDiv);
};

Right.validate = function(){
	var password = $("#password").val();
	$.ajax({
		type : "POST",
		data : {"password" : password},
		url : "/blog/services/root/validate",
		dataType : "html",
		async : false,
		success : function(data) {
			if(data != "false"){
				$("#admin").hide();
				$("#body").append(data);
			}else{
				alert("If you try again with wrong password, you will be traced...");
			}
		},
		error : function() {
			alert("error!");
		}
	});
};