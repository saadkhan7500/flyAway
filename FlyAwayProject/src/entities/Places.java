package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

@Entity
public class Places 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int P_ID;
	
	private String source;
	
	
	private String destination;
	
	@OneToOne(targetEntity=Flight.class) 
	private Flight flight;


	public Places() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Places(int p_ID, String source, String destination) {
		super();
		P_ID = p_ID;
		this.source = source;
		this.destination = destination;
	}
	
	


	public Places(String source, String destination) {
		super();
		this.source = source;
		this.destination = destination;
	}


	public int getP_ID() {
		return P_ID;
	}


	public void setP_ID(int p_ID) {
		P_ID = p_ID;
	}


	public String getSource() {
		return source;
	}


	public void setSource(String source) {
		this.source = source;
	}


	public String getDestination() {
		return destination;
	}


	public void setDestination(String destination) {
		this.destination = destination;
	}
	
	

}
