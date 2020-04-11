package countryService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.FanoutExchange;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;

@RabbitListener(queues = "city-reservation-q1")
	public class ReservationEventHandler {
	
	@Autowired
    private RabbitTemplate rabbitTemplate;
	
	@Autowired
    private FanoutExchange fanReturnPopulation;

		private static final Logger log = 
	          LoggerFactory.getLogger(ReservationEventHandler.class);

		@RabbitHandler
		public void receive(String in) {
			System.out.println(in);
			log.info(" [ReservationEventHandler] Received '" + 
	                    in + "'");
			String population = "2000";
			
			String msg  = "{\"Population\": \""+ population + 
		               "\"}" ;
				System.out.println("Sending message:"+msg);
				rabbitTemplate.convertSendAndReceive(
						fanReturnPopulation.getName(), 
		                "",   // routing key none.
		                msg);
			
			
			
		}
	}


