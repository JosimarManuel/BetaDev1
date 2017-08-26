package com.ebim.factory.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ebim.factory.model.User;
import org.springframework.data.jpa.repository.Modifying;

public interface UserRepository extends JpaRepository<User, Long> {
    
	User findByUsername(String username);
	
	@Query("Select u from User u order by u.name")
	List<User> findAllUsers();
        
       	
        
        @Query("Select u from User u where id=?1")
	User findUserById(int id);
	
}
