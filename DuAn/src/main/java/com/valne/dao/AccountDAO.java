package com.valne.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.valne.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String> {

}
