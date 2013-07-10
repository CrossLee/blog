package com.withiter.restful;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

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
		c.setCount(c.getCount()+1);
		c.update();
		
		if (log.isDebugEnabled()) {
			log.debug("Restful call for loading articles...");
		}
		List<Article> articles = Article.getLatestFiveArticles();
		List<ArticleVO> articleVOs = new ArrayList<ArticleVO>();
		
		for(Article article : articles){
			articleVOs.add(ArticleVO.build(article));
		}
		
		return articleVOs;
	}
}