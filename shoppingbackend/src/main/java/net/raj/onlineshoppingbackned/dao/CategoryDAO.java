package net.raj.onlineshoppingbackned.dao;

import java.util.List;

import net.raj.onlineshoppingbackned.dto.Category;

public interface CategoryDAO {
	
	List<Category> list();

	Category get(int id);

}
