package entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class Flight 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int F_ID;
	
	@OneToOne(targetEntity=Airlines.class,cascade=CascadeType.ALL)  
	private Airlines airline;
	
	@OneToOne(targetEntity=Places.class,cascade=CascadeType.ALL)  
	private Places places;
	
	private String ticketPrice;

	public Flight() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Flight(Airlines airline, Places places, String ticketPrice) {
		super();
		this.airline = airline;
		this.places = places;
		this.ticketPrice = ticketPrice;
	}



	public int getF_ID() {
		return F_ID;
	}

	public void setF_ID(int f_ID) {
		F_ID = f_ID;
	}

	public Airlines getAirline() {
		return airline;
	}

	public void setAirline(Airlines airline) {
		this.airline = airline;
	}

	public Places getPlaces() {
		return places;
	}

	public void setPlaces(Places places) {
		this.places = places;
	}



	public String getTicketPrice() {
		return ticketPrice;
	}



	public void setTicketPrice(String ticketPrice) {
		this.ticketPrice = ticketPrice;
	}



	@Override
	public String toString() {
		return "Flight [F_ID=" + F_ID + ", airline=" + airline + ", places=" + places + ", ticketPrice=" + ticketPrice
				+ "]";
	}

	
	

}
