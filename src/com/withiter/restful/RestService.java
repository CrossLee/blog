package com.withiter.restful;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.withiter.constant.Configuration;
import com.withiter.model.Article;
import com.withiter.model.VisitCounter;
import com.withiter.vo.ArticleVO;


@Path("/root")
public class RestService {

	private static final Log log = LogFactory.getLog(RestService.class);
	
	@POST
	@Path("/loadArticles")
	@Produces(MediaType.APPLICATION_JSON)
	public List<ArticleVO> loadArticles() {
		
		VisitCounter c = VisitCounter.getVisitCounter();
		c.updateCount();
		log.info(RestService.class + ": Restful call for loading articles...");
		
		List<Article> articles = Article.getLatestFiveArticles();
		List<ArticleVO> articleVOs = new ArrayList<ArticleVO>();
		
		for(Article article : articles){
			articleVOs.add(ArticleVO.build(article));
		}
		return articleVOs;
	}
	
	@POST
	@Path("/validate")
	@Produces(MediaType.TEXT_PLAIN)
	public String validate(String password) {
		log.info(RestService.class + ": validate password: "+password);
		boolean flag = password.equals("password="+Configuration.getPassowrd());
		String form = ""+
		"<div id=\"form_content\" class=\"right_content\">"+
			"<div class=\"right\">"+
				"<form action=\"/blog/AddArticle\" method=\"post\">"+
					"<table>"+
						"<tr><td>title:</td><td><input size=\"40\" style=\"width: 496px;\" name=\"title\" /></td></tr>"+
						"<tr><td>tags:</td><td><input size=\"40\" style=\"width: 496px;\" name=\"tag\" /></td></tr>"+
						"<tr><td>content:</td><td><textarea style=\"width: 500px; font-size:12px;\" name=\"content\" cols=\"40\" rows=\"20\"></textarea></td></tr>"+
						"<tr><td colspan=\"2\"><input type=\"submit\" value=\"Submit\"></td></tr>"+
					"</table>"+
				"</form>"+
			"</div>"+
		"</div>";
		
		return (flag)? form : "false";
	}
}