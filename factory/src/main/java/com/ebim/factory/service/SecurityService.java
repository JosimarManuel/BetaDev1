package com.ebim.factory.service;

public interface SecurityService {
	
    String findLoggedInUsername();

    void autologin(String username, String password);
}
