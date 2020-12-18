package com.contact.dao;

import java.util.List;

import com.contact.entity.Contact;

public interface ContactDao {

	List<Contact> getAllContacts();

	void createContact(Contact con);

	 Contact getContactById(int id);

	void deleteContact(int id);


}
