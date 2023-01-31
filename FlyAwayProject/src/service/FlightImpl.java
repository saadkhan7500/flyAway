package service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import entities.*;

import org.hibernate.Transaction;

public class FlightImpl 
{
	
	   public static void addFlightDetails(Flight f)
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      Transaction t = session.beginTransaction();
           session.save(f);
          
    t.commit();
    
    session.close();
    
 	     

       } 
	   
	   public static List<Flight> getAllFlights()
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      

 	     List<Flight> flight = session.createQuery("from Flight").list();
 	     
 	   
 	     
 	      
 	      Transaction t = session.beginTransaction();
           
          
    t.commit();
    
    session.close();
    
   return flight;

       }
	   
	   public static List<Flight> getFlightById(int id)
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      

 	     List<Flight> flight = session.createQuery("FROM Flight F WHERE F.F_ID ="+id).list();
 	     
 	   
 	     
 	      
 	      Transaction t = session.beginTransaction();
           
          
    t.commit();
    
    session.close();
    
   return flight;

       }
	   
}
