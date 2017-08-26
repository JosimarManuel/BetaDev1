package com.ebim.factory.service;

import java.util.List;

import com.ebim.factory.model.User;

public interface UserService {
    //Grabar usuario
    void save(User user);
    //Buscar usuario
    User findByUsername(String username); 
    //Listar usuarios
    List<User> findAllUsers();
 
    
}
