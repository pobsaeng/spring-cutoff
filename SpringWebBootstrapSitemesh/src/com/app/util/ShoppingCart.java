package com.app.util;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class ShoppingCart {
    private Map<String, Item> cart;
    
    public ShoppingCart() {
    	cart = new LinkedHashMap<String, Item>();        
    }
    //add
    public void add(Item item) {
        cart.put(item.getId(), item);
    }
    //update
    public void update(String id, int amount) {
        cart.get(id).setAmount(amount);
    }
    //remove 
    public void remove(String id) {
        cart.remove(id);
    }
    
    public Collection<Item> getItems() {
        return cart.values();
    }
    
    public BigDecimal getTotalPrice() {
    	BigDecimal sum = BigDecimal.ZERO;
    	BigDecimal costItem = BigDecimal.ZERO;
        for (Item item : cart.values()) {
        	costItem = item.getPrice().multiply(new BigDecimal(item.getAmount()));
            sum.add(costItem);
        }
        
        return sum;
    }
    public static void main(String[] args) {
//    	Book b1 = new Book();
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
//    	ShoppingCart c = new ShoppingCart();
//    	Item i1 = new Item();
//    	i1.setId(b1.getId());
//    	i1.setAmount(2);
//    	i1.setTitle(b1.getTitle());
//    	i1.setPrice(b1.getPrice());
//    	i1.setStock(b1.getStock());
//    	
//    	Item i2 = new Item();
//    	i2.setId(b2.getId());
//    	i2.setAmount(1);
//    	i2.setTitle(b2.getTitle());
//    	i2.setPrice(b2.getPrice());
//    	i2.setStock(b2.getStock());
//    	
//    	Item i3 = new Item();
//    	i3.setId(b3.getId());
//    	i3.setAmount(2);
//    	i3.setTitle(b3.getTitle());
//    	i3.setPrice(b3.getPrice());
//    	i3.setStock(b3.getStock());
//    	
//    	c.add(i1);
//    	c.add(i2);
//    	c.add(i3);
//    	
//    	System.out.println(c.getTotalPrice());
	}
}