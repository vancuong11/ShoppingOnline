package com.valne.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.valne.entity.Product;


public interface ProductDAO extends JpaRepository<Product, Integer> {
	
	@Query("SELECT p FROM Product p WHERE p.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
	
	@Query("select p from Product p where p.name like '%ip%'")
	List<Product> findName();
	
	@Query("select p from Product p where p.name like '%samsung%'")
	List<Product> findNameSS();
	
	@Query("select p from Product p where p.category.id = '2'")
	Page<Product> Laptop(String keywords, Pageable pageable);
	
	@Query("select p from Product p where p.category.id = '3'")
	Page<Product> Phukien(String keywords, Pageable pageable);
}
