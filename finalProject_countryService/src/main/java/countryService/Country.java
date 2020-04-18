package countryService;
import javax.persistence.*;


@Entity
@Table(name="country")
public class Country {
	
	
//	private String code;
	@Id
	private String country;
	private String population;
	
	public Country() {
//		code = "code";
		country = "country";
		population = "population";
	}
	
	public Country(String code, String name, String population) {
//		this.code = code;
		this.country = country;
		this.population = population;
	}

//	public String getCode() {
//		return code;
//	}

//	public void setCode(String code) {
//		this.code = code;
//	}

	public String getName() {
		return country;
	}

	public void setName(String name) {
		this.country = name;
	}
	public String getPopulation() {
		return population;
	}

	public void setPopulation(String population) {
		this.population = population;
	}

	@Override
	public String toString() {
//		return "Country [code=" + code + ", name=" + name + "]";
		return "Country [name=" + country + "]";
	}

}