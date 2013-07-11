package com.withiter.model;

import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.google.code.morphia.annotations.Entity;
import com.google.code.morphia.annotations.Id;
import com.google.code.morphia.annotations.Property;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.withiter.constant.Configuration;
import com.withiter.model.common.BasicDBObjectUtils;

@Entity
public class Article {

	@Id
	public String id;
	@Property
	public String date;
	@Property
	public String title;
	@Property
	public String content;
	@Property
	public String tag;

	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Article(String id, String date, String title, String content,
			String tag) {
		super();
		this.id = id;
		this.date = date;
		this.title = title;
		this.content = content;
		this.tag = tag;
	}

	public static List<Article> getLatestFiveArticles(){
		List<Article> articles = new ArrayList<Article>();
		Mongo mg = null;
		try {
			mg = new Mongo();
			DB db = mg.getDB(Configuration.DB_NAME);
			DBCollection article = db.getCollection("Article");
			DBCursor cur = article.find().limit(5).sort(new BasicDBObject("date",-1));
			List<DBObject> objects = cur.toArray();
			Article a = null;
			for(DBObject object : objects){
				a = new Article(object.get("id").toString(),object.get("date").toString(),object.get("title").toString(),object.get("content").toString(),object.get("tag").toString());
				articles.add(a);
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (MongoException e) {
			e.printStackTrace();
		} finally {
			mg.close();
		}
		return articles;
	}
	
	public void save(){
		Mongo mg = null;
		try {
			mg = new Mongo();
			DB db = mg.getDB(Configuration.DB_NAME);
			DBCollection collection = db.getCollection("Article");
			DBObject article = BasicDBObjectUtils.castModel2DBObject(this);
			collection.insert(article);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (MongoException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			mg.close();
		}
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}
	
	public static void main(String[] args) {
		
		String aaa = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
		System.out.println(aaa);
	}
	
}
