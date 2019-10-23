package com.app.client;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.app.model.Book;
import com.app.util.Item;

public class TestMyCart {
	private Map<Integer, Item> cart;
	public TestMyCart() {
		cart = new HashMap<Integer, Item>();    
	}
//	public void add(Item item){
//		cart.put(item.getId(), item);
//	}
	public void update(int id, int amount){
		cart.get(id).setAmount(amount);
	}
	public void delete(int id){
		cart.remove(id);
	}
	public Collection<Item> getItem(){
		return cart.values();
	}
	public static void main(String[] args) {
//		Book b1 = new Book();
//    	b1.setId(2);
//    	b1.setTitle("Java");
//    	b1.setPrice(200);
//    	b1.setStock(2);
//    	b1.setAuthors("Pob");
//    	
//    	Book b2 = new Book();
//    	b2.setId(4);
//    	b2.setTitle("PHP");
//    	b2.setPrice(150);
//    	b2.setStock(1);
//    	b2.setAuthors("Saeng");
//    	
//    	Book b3 = new Book();
//    	b3.setId(1);
//    	b3.setTitle("Python");
//    	b3.setPrice(250);
//    	b3.setStock(3);
//    	b3.setAuthors("Thod");
//    	
//    	TestMyCart c = new TestMyCart();
//    	Item i1 = new Item();
//    	i1.setId(b1.getId());
//    	i1.setAmount(2);
//    	i1.setTitle(b1.getTitle());
//    	i1.setPrice(b1.getPrice());
//    	i1.setStock(b1.getStock());
//    	
//    	c.add(i1);
//
//    	System.out.println(c.getItem());
//    	c.update(i1.getId(), 5);
//    	System.out.println(c.getItem());
	}
}
