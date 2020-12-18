package com.contact.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.contact.dao.ContactDao;
import com.contact.entity.Contact;

@Service
public class ContactServiceImpl implements ContactService{

	@Autowired
	ContactDao contactDao;


	@Transactional
	public List<Contact> getAllContacts() {
		return contactDao.getAllContacts();
	}

	@Transactional
	public void create(Contact con) {
		contactDao.createContact(con);
	}

	@Transactional
	public Contact getContactById(int id) {
		return contactDao.getContactById(id);
	}
	
	@Transactional
	public void deleteContact(int id) {
		contactDao.deleteContact(id);
	}

	public void createContact(Contact con) {
		// TODO Auto-generated method stub
		
	}

}
