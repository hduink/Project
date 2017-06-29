package com.duinker.testDatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller						
public class DatabaseController {
	
	@Autowired
	private ShopRepository repo;
	
	@RequestMapping(value="/databaseTest", method=RequestMethod.GET)
	public String inputForm(){
		return "databaseTest";
		}
		
	@RequestMapping(value="/databaseTest", method=RequestMethod.POST)
	public String inputSubmit(InputSearch inputSearch){
		repo.save(inputSearch);
		return "databaseTest";
	}
	
	
	
}