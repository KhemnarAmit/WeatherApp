package com.project.weather;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WeatherController {
	@Autowired
	private WeatherService weatherService;

	@Autowired
	private CurrencyService currencyService;

	@RequestMapping("/")
	public String homePage() {
		return "home";
	}

	@RequestMapping("/weather")
	public String showWeather(@RequestParam("city") String city, Model model) {
		try {
			WeatherResponse weatherResponse = weatherService.getWeather(city);
			model.addAttribute("weather", weatherResponse);
			return "result"; // This will return result.html or result.jsp
		} catch (Exception e) {
			model.addAttribute("error", "City not found or API error");
			return "home"; // Returns to home page in case of an error
		}
	}

	@GetMapping("/currencyExchangeHome")
	public String currencyHome(Model model) {
		CurrencyResponse response = currencyService.getExchangeRates("USD");
		if (response != null && response.getConversion_rates() != null) {
			model.addAttribute("currencies", response.getConversion_rates().keySet()); // Pass currency keys (codes)
		} else {
			model.addAttribute("error", "Unable to fetch exchange rates.");
		} // This will render home.jsp
		return "currencyExchangeHome";
	}

	@RequestMapping("/convert")
	public String convertCurrency(@RequestParam String from, @RequestParam String to, @RequestParam double amount,
			Model model) {

		try {
// Assuming currencyService.getExchangeRates() returns a CurrencyResponse object
			CurrencyResponse response = currencyService.getExchangeRates(from);

			if (response != null && response.getConversion_rates() != null) {
				double rate = response.getConversion_rates().get(to);
				double convertedAmount = amount * rate;

// Pass the conversion details to the view
				model.addAttribute("amount", amount);
				model.addAttribute("from", from);
				model.addAttribute("to", to);
				model.addAttribute("convertedAmount", convertedAmount);
				model.addAttribute("rate", rate);
			} else {
				model.addAttribute("error", "Unable to fetch exchange rates.");
			}
		} catch (Exception e) {
			model.addAttribute("error", "Error occurred while converting.");
		}

		return "currencyResult"; // This should match the name of your JSP
	}
	
	

}
