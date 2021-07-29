package com.valne.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.valne.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Integer> {
	@Query("select p from OrderDetail p where p.order.account.username LIKE ?1")
	List<OrderDetail> findAllUser(String user);
}
