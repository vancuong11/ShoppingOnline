package com.valne.dao;

import java.util.Collection;
import java.util.List;

import com.valne.entity.Item;
import com.valne.entity.Order;
import com.valne.entity.OrderDetail;
import com.valne.entity.Product;

public interface ShoppingCart {
	Item add(Integer id);
	void remove(Integer id);
	Item update(Integer id, int qty);
	void clear();
	Collection<Item> getItems();
	long getCount();
	double getAmount();
	long gettotal();
	long gettong();

	

}
