package com.ebim.factory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ebim.factory.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
