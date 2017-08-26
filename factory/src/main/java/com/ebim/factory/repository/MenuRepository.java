package com.ebim.factory.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.ebim.factory.model.Menu;
import com.ebim.factory.model.Role;

public interface MenuRepository extends Repository<Role, Long>{

	@Query("Select u from Menu u where u.role = :role and u.estado = true order by u.id")	
	public List<Menu> getMenu(@Param("role") String role);
	
}
