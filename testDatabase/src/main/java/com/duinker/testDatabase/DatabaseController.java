package com.duinker.testDatabase;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String inputSubmit(String locatie, String merk, String prijs, HttpServletRequest model){
		
		Casus b = new Casus();
		b.setLocatie(locatie);
		b.setMerk(merk);
		b.setPrijs(prijs);
		
		model.getSession().setAttribute("model", b);
		return "redirect:/databaseReturn";
	}	
	
	@RequestMapping(value="/databaseReturn", method=RequestMethod.GET)
	public String getResults(HttpServletRequest requestModel, Model model){
		Casus b = (Casus) requestModel.getSession().getAttribute("model");
		
		List<Casus> filter = repo.zoekinput(b.getLocatie(), b.getMerk(), b.getPrijs());
		model.addAttribute("filter", filter);
		return "databaseReturn";
		
	}	

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

