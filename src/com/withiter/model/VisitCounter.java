package com.withiter.model;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

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
public class VisitCounter {

	@Id
	String id;
	@Property
	long count;
	
	public VisitCounter(String id, long count) {
		super();
		this.id = id;
		this.count = count;
	}

	
	public VisitCounter() {
		super();
	}



	public static VisitCounter getVisitCounter(){
		Mongo mg = null;
		VisitCounter a = null;
		try {
			mg = new Mongo();
			DB db = mg.getDB(Configuration.DB_NAME);
			DBCollection article = db.getCollection("VisitCounter");
			DBCursor cur = article.find();
			if(cur.count() != 0){
				List<DBObject> objects = cur.toArray();
				String id = objects.get(0).get("id").toString();
				long count = Long.parseLong(objects.get(0).get("count").toString());
				a = new VisitCounter(id, count);
			}else{
				String id = UUID.randomUUID().toString();
				a = new VisitCounter(id, 1);
				a.save();
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (MongoException e) {
			e.printStackTrace();
		} finally {
			mg.close();
		}
		return a;
	}
	
	public void save(){
		Mongo mg = null;
		try {
			mg = new Mongo();
			DB db = mg.getDB(Configuration.DB_NAME);
			DBCollection collection = db.getCollection("VisitCounter");
			DBObject count = BasicDBObjectUtils.castModel2DBObject(this);
			collection.insert(count);
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
	
	public void update(){
		Mongo mg = null;
		try {
			mg = new Mongo();
			DB db = mg.getDB(Configuration.DB_NAME);
			DBCollection collection = db.getCollection("VisitCounter");
			DBObject count = BasicDBObjectUtils.castModel2DBObject(this);
			collection.update(count, count);
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


	public long getCount() {
		return count;
	}


	public void setCount(long count) {
		this.count = count;
	}
	
}
