package countryService;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest
public class countryServiceTest {
	
	@Autowired
	private ReservationEventHandler Event;

	


	
	@Test
	public void countryFound () {
		
		String country1 = "{\"country\": \"Canada\"}";
		String country2 = "{\"country\": \"Ethiopia\"}";
		String country3 = "{\"country\": \"Malaysia\"}";
		
		String result1 = "{\"Population\": \"37742154\"}";
		String result2 = "{\"Population\": \"114963588\"}";
		String result3 = "{\"Population\": \"32365999\"}";
		
		Event.receive(country1);
		assertThat(Event.getMessage()).isEqualTo(result1);
		Event.receive(country2);
		assertThat(Event.getMessage()).isEqualTo(result2);
		Event.receive(country3);
		assertThat(Event.getMessage()).isEqualTo(result3);
			
		
	}
	
	@Test
	public void countryNotFound() {
		String country1 = "{\"country\": \"Utopia\"}";
		String country2 = "{\"country\": \"Petoria\"}";
		String country3 = "{\"country\": \"Susanville\"}";
		
		String result1 = "{\"Population\": \"0\"}";
		
		
		Event.receive(country1);
		assertThat(Event.getMessage()).isEqualTo(result1);
		Event.receive(country2);
		assertThat(Event.getMessage()).isEqualTo(result1);
		Event.receive(country3);
		assertThat(Event.getMessage()).isEqualTo(result1);
	}

}
