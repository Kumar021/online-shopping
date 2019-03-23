package net.raj.onlineshoppingbackned.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.raj.onlineshoppingbackned.dao.CategoryDAO;
import net.raj.onlineshoppingbackned.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	
	
	static {
		Category category = new Category();
		
		// adding first category 
		category.setId(1);
		category.setName("Television");
		category.setDescription("best quality");
		category.setImageUrl("CAT_1.png");
		categories.add(category);
		
		category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("best quality");
		category.setImageUrl("CAB_1.png");
		
		categories.add(category);
		
	}
	
	
	
	@Override
	public List<Category> list() {
	// TODO Auto-generated method stub
		return categories;
	}



	@Override
	public Category get(int id) {

		// enhanced fro loop
		for(Category category : categories) {
			if(category.getId() == id)
				return category;
		}
		
		
		return null;
	}

}
