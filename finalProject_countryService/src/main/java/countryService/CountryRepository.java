package countryService;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.databind.JsonMappingException;


@Repository
public interface CountryRepository extends JpaRepository<Country, String> {	
	
	
	Country findByCountry(String name);
	
		
		
	
	
}