package com.project.weather;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class WeatherController {
	@Autowired
	private WeatherService weatherService;

	@RequestMapping("/")
	public String homePage() {
		return "home";
	}

	@RequestMapping("/weather")
	public String showWeather(@RequestParam("city") String city, Model model) {
		try {
			WeatherResponse weatherResponse = weatherService.getWeather(city);
			model.addAttribute("weather", weatherResponse);
			return "result"; 
		} catch (Exception e) {
			model.addAttribute("error", "City not found or API error");
			return "home"; 
		}
	}
	
	@RequestMapping("/visitgoogle")
	public String goGoogle() {
		return "redirect:https://facebook.com";
	}
}
