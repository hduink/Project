package com.duinker.kaartTest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller						
public class MapController {
	
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public @ResponseBody String Kaart(Model model){
		return "htmlkaart";		
	}
}