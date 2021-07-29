package com.valne.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.valne.entity.Account;
import com.valne.entity.Order;

public interface OrderDAO extends JpaRepository<Order, Integer> {

}
