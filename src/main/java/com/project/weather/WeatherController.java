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

    // Home page that will be shown at '/'
    @RequestMapping("/")
    public String homePage() {
        return "home";  // This will return home.html or home.jsp
    }

    // Weather page: Shows the weather for a specific city
    @RequestMapping("/weather")
    public String showWeather(@RequestParam("city") String city, Model model) {
        try {
            WeatherResponse weatherResponse = weatherService.getWeather(city);
            model.addAttribute("weather", weatherResponse);
            return "result";  // This will return result.html or result.jsp
        } catch (Exception e) {
            model.addAttribute("error", "City not found or API error");
            return "home";  // Returns to home page in case of an error
        }
    }

    // External redirect to another page (for example, Google)
    @RequestMapping("/visitgoogle")
    public String goGoogle() {
        return "redirect:https://facebook.com";  // Redirects to Facebook
    }
}
