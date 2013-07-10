package com.withiter.vo;

import javax.xml.bind.annotation.XmlRootElement;

import com.withiter.model.Article;

@XmlRootElement
public class ArticleVO {

	public String id;
	public String date;
	public String title;
	public String content;
	public String tag;
	public ArticleVO() {
		super();
	}
	
	public ArticleVO(String id, String date, String title, String content,
			String tag) {
		super();
		this.id = id;
		this.date = date;
		this.title = title;
		this.content = content;
		this.tag = tag;
	}
	
	public static ArticleVO build(Article article){
		String id = article.id;
		String date = article.date;
		String title = article.title;
		String content = article.content;
		String tag = article.tag;
		ArticleVO vo = new ArticleVO(id, date, title, content, tag);
		return vo;
	}
}
