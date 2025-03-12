package com.project.weather;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class WeatherService {
	

    private static final String API_KEY = "6a59d6fd3f830f59b4fedccdfc5b5ff8";
    private static final String API_URL = "http://api.openweathermap.org/data/2.5/weather?q={city}&appid={apiKey}&units=metric";

    @Autowired
    private RestTemplate restTemplate;

    public WeatherResponse getWeather(String city) {
        return restTemplate.getForObject(API_URL, WeatherResponse.class, city, API_KEY);
    }
}
