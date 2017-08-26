package com.ebim.factory.service;

import java.util.List;
import com.ebim.factory.model.Menu;

public interface MenuService {
	
	public List<Menu> getMenu(String role);
}
