package com.project.weather;


import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class CurrencyService {

    private static final String API_KEY = System.getenv("C-API-KEY");  // Replace with your API key
    private static final String API_URL = "https://v6.exchangerate-api.com/v6/" + API_KEY + "/latest/{currency}";

    private final RestTemplate restTemplate = new RestTemplate();

    public CurrencyResponse getExchangeRates(String currency) {
        return restTemplate.getForObject(API_URL, CurrencyResponse.class, currency);
    }
}
