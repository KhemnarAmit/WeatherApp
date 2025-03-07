package weather;

import com.project.weather.WeatherResponse;
import com.project.weather.WeatherService;

public class Test {
	public static void main(String[] args) {
	    WeatherService weatherService = new WeatherService();
	    WeatherResponse weatherResponse = weatherService.getWeather("Tokyo");
	    
	    System.out.println("City: " + weatherResponse.getName());
	    System.out.println("Temperature: " + weatherResponse.getMain().getTemp());

	}
}
