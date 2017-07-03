package com.duinker.testDatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
//	@RequestMapping(value="/testing", method=RequestMethod.GET)
//	public String testmoment (Model model){
//		Markers marker = new Markers();
//		marker.setLat(34.578908F);
//		marker.setLng(23.09876F);
//		model.addAttribute("markers", marker);
//		
//		return "testing";
//		}
	
//	@RequestMapping(value="/databaseTest/{inputId}")
//	public String detailView(@PathVariable String location){
//	        InputSearch inputSearch = repo.findOne( Long.valueOf(location) );
//	}

//	@GetMapping("/test")
//	@ResponseBody
//	public Iterable<InputSearch> getInput(){
//		return repo.findAll();
//	}

}