package com.contact.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.contact.entity.Contact;

@Repository
public class ContactDaoImpl implements ContactDao{

	@Autowired
	private SessionFactory factory;
	
	public List<Contact> getAllContacts() {
		Session sess=factory.getCurrentSession();
		Query<Contact> query=sess.createQuery("from Contact",Contact.class);
		List<Contact> conlist=query.getResultList();
		return conlist;
	}

	public void createContact(Contact con) {
		Session sess=factory.getCurrentSession();
		sess.saveOrUpdate(con);
		System.out.println("inserted");
	}

	public Contact getContactById(int id) {
		Session sess=factory.getCurrentSession();
		return sess.get(Contact.class, id);
		
	}

	public void deleteContact(int id) {
		Session sess=factory.getCurrentSession();
		
		Query<Contact> query=sess.createQuery("delete from Contact where contact_id=:contactId");
		query.setParameter("contactId", id);
		query.executeUpdate();
		System.out.println("deleted");
		
	}


}
