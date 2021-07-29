package com.valne.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.Data;

@Data
@Entity
@Table(name = "Orderdetails", uniqueConstraints = {
		@UniqueConstraint(columnNames = {"orderid","productid"})
})
public class OrderDetail implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	Double price;
	Integer quantity;
	@ManyToOne @JoinColumn(name ="productid")
	Product product;
	@ManyToOne @JoinColumn(name ="orderid")
	Order order;
	
}
