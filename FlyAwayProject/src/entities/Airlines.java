package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

@Entity
public class Airlines 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int A_ID;
	
	private String AirlineName;
	
	@OneToOne(targetEntity=Flight.class) 
	private Flight flight;


	public Airlines() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Airlines(int a_ID, String airlineName) {
		super();
		A_ID = a_ID;
		AirlineName = airlineName;
	}
	
	

	public Airlines(String airlineName) {
		super();
		AirlineName = airlineName;
	}

	public int getA_ID() {
		return A_ID;
	}

	public void setA_ID(int a_ID) {
		A_ID = a_ID;
	}

	public String getAirlineName() {
		return AirlineName;
	}

	public void setAirlineName(String airlineName) {
		AirlineName = airlineName;
	}
	
	

}
