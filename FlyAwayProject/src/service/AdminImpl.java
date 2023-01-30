package service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import entities.Admin;

import org.hibernate.Transaction;


public class AdminImpl 
{
          public static int ifAdminExist(Admin admin)
          {
        	  try {
        	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    	      Session session = sessionFactory.openSession();
    	      
    	     Admin admin1 = session.get(Admin.class,admin.getUserName());
    	     
    	     if(admin1.getPassword().equals(admin.getPassword()))
    	     {
    	    	return 1; 
    	     }
    	     return 0;
          }
        	  catch(Exception e)
              {
        		  System.out.println(e);
            	  return 0;
              }
          }
          public static void resetPassword(Admin admin)
          {
     
        	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    	      Session session = sessionFactory.openSession();
    	      
    	      Transaction t = session.beginTransaction();
              session.update(admin);
             
       t.commit();
       
       session.close();
    	     
  
          }      
}
