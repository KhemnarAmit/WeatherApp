package com.project.weather;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class WeatherController {
	@Autowired
	private WeatherService weatherService;

	@Autowired
	private CurrencyService currencyService;
	
	public static String N_API_KEY=System.getenv("N_API-KEY");
	
	private static final String news_api_url="https://newsapi.org/v2/top-headlines?country=us&apiKey="+N_API_KEY;


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

	@GetMapping("/currencyExchangeHome")
	public String currencyHome(Model model) {
		CurrencyResponse response = currencyService.getExchangeRates("USD");
		if (response != null && response.getConversion_rates() != null) {
			model.addAttribute("currencies", response.getConversion_rates().keySet()); 
		} else {
			model.addAttribute("error", "Unable to fetch exchange rates.");
		} 
		return "currencyExchangeHome";
	}

	@RequestMapping("/convert")
	public String convertCurrency(@RequestParam String from, @RequestParam String to, @RequestParam double amount,
			Model model) {

		try {

			CurrencyResponse response = currencyService.getExchangeRates(from);

			if (response != null && response.getConversion_rates() != null) {
				double rate = response.getConversion_rates().get(to);
				double convertedAmount = amount * rate;


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

		return "currencyResult"; 
	}
	
	@RequestMapping("/news")
	public String getNews(Model model) {
	    RestTemplate restTemplate = new RestTemplate();
	    
	    String listOfNewsItems = restTemplate.getForObject(news_api_url, String.class);

	    // Log the raw API response
	    System.out.println("Raw API Response: " + listOfNewsItems);

	    try {
	        // Parse JSON response into NewsApiResponse object
	        ObjectMapper objectMapper = new ObjectMapper();
	        NewsApiResponse newsApiResponse = objectMapper.readValue(listOfNewsItems, NewsApiResponse.class);

	        // Check if articles are available and extract the first news item
	        if (newsApiResponse != null && !newsApiResponse.getArticles().isEmpty()) {
	            NewsItem firstNews = newsApiResponse.getArticles().get(0);
	            model.addAttribute("firstNews", firstNews);
	        }

	        // Log the number of articles
	        System.out.println("Number of Articles: " + newsApiResponse.getArticles().size());
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("Error while parsing the JSON: " + e.getMessage());
	    }

	    return "news";
	}

}
