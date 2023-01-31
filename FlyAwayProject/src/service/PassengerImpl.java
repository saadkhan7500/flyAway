package service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import entities.*;

import org.hibernate.Transaction;

public class PassengerImpl 
{
	
	   public static void addPessengerDetails(Passenger p)
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      Transaction t = session.beginTransaction();
           session.save(p);
          
    t.commit();
    
    session.close();
    
 	     

       } 
	   
	   public static List<Passenger> getAllPessengers()
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      

 	     List<Passenger> p = session.createQuery("from Passenger").list();
 	     
 	   
 	     
 	      
 	      Transaction t = session.beginTransaction();
           
          
    t.commit();
    
    session.close();
    
   return p;

       }
	   

}
