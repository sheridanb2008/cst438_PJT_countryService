package countryService;

import org.springframework.amqp.core.FanoutExchange;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration

public class ConfigPublisher {
	@Bean
	public FanoutExchange fanReturnPopulation() {
		return new FanoutExchange("country-population");
	}

}
