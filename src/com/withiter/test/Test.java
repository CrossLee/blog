package com.withiter.test;

import java.net.UnknownHostException;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.mongodb.util.JSON;
import com.withiter.model.User;
import com.withiter.model.common.BasicDBObjectUtils;

public class Test {
	public static void main(String[] args) throws UnknownHostException, MongoException {
		Mongo mg = new Mongo();
		System.out.println("查询所有的Database的名称");
		for (String name : mg.getDatabaseNames()) {
			System.out.println("dbName: " + name);
		}

		System.out.println("查询test库中的所有collection集合（表）名称");
		DB db = mg.getDB("test");
		for (String name : db.getCollectionNames()) {
			System.out.println("collectionName: " + name);
		}
		System.out.println("添加测试数据");
		DBCollection users = db.getCollection("users");

		try {
			// 用自定义BasicDBObjectUtils工具类，将User Enity对象转换成DBObject
			DBObject user = BasicDBObjectUtils.castModel2DBObject(new User("345567", "jack", 22, "beijin"));
			users.insert(user);
			// 用BasicDBObjectBuilder构建一个DBObject对象
			user = BasicDBObjectBuilder.start("id", 1546555)
					.append("name", "jojo").add("address", "gz")
					.append("email", "hoojo_@126.com").get();
			users.insert(user);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("游标查询所有users集合数据");
		DBCursor cur = users.find();
		while (cur.hasNext()) {
			System.out.println(cur.next());
		}

		System.out.println("查询游标相关内容");
		System.out.println(cur.count());
		System.out.println(cur.getCursorId());
		System.out.println(cur.getOptions());
		System.out.println(cur.getQuery());
		System.out.println(cur.getSizes().listIterator());
		System.out.println(cur.itcount());
		System.out.println(cur.size());
		System.out.println(cur.numGetMores());
		System.out.println(cur.curr());
		System.out.println("显示游标查询到的所有内容： " + JSON.serialize(cur));
	}
}
