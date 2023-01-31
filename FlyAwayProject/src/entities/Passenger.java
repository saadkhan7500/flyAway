package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Passenger 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private int fId;
	
	private String date;
	
	private int nop;
	
	private String email;
	
	private String name;
	
	private String age;
	
	private String ticketNo;

	public Passenger() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public Passenger(int fId, String date, int nop, String email, String name, String age, String ticketNo) {
		super();
		this.fId = fId;
		this.date = date;
		this.nop = nop;
		this.email = email;
		this.name = name;
		this.age = age;
		this.ticketNo = ticketNo;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getfId() {
		return fId;
	}

	public void setfId(int fId) {
		this.fId = fId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getNop() {
		return nop;
	}

	public void setNop(int nop) {
		this.nop = nop;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	
	

	public String getTicketNo() {
		return ticketNo;
	}



	public void setTicketNo(String ticketNo) {
		this.ticketNo = ticketNo;
	}



	@Override
	public String toString() {
		return "Pessenger [id=" + id + ", fId=" + fId + ", date=" + date + ", nop=" + nop + ", email=" + email
				+ ", name=" + name + ", age=" + age + "]";
	}
	
	
	

}
