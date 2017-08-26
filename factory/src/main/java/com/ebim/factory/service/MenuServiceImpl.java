package com.ebim.factory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ebim.factory.model.Menu;
import com.ebim.factory.repository.MenuRepository;

@Service
public class MenuServiceImpl implements MenuService{
	
	@Autowired
	private MenuRepository menuRepository;


	public List<Menu> getMenu(String role) {
		
		return menuRepository.getMenu(role);
	}


	public void setMenuRepository(MenuRepository menuRepository) {
		this.menuRepository = menuRepository;
	}
	
	
	

}
