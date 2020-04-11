package countryService;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.FanoutExchange;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.xml.bind.v2.schemagen.xmlschema.List;

import net.minidev.json.JSONObject;

@RabbitListener(queues = "city-reservation-q1")
	public class ReservationEventHandler {
	
	@Autowired
    private RabbitTemplate rabbitTemplate;
	
	@Autowired
	private CountryRepository countryRepository;
	
	@Autowired
    private FanoutExchange fanReturnPopulation;
	
	ObjectMapper objectMapper = new ObjectMapper();

		private static final Logger log = 
	          LoggerFactory.getLogger(ReservationEventHandler.class);

		@RabbitHandler
		public void receive(String in) {
			try {
				JsonNode jsonNode = objectMapper.readTree(in);
				 String country = jsonNode.findValue("cityName2").textValue();
				// Connect to database to get population
				 Country country1 =  countryRepository.findByName(country);
					

				
					String msg  = "{\"Population\": \""+ country1.getPopulation() + 
			               "\"}" ;
					System.out.println("Sending message:"+msg);
					rabbitTemplate.convertSendAndReceive(
							fanReturnPopulation.getName(), 
			                "",   // routing key none.
			                msg);
				
				
				
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			
			
			
						
			
			
		}
	}


