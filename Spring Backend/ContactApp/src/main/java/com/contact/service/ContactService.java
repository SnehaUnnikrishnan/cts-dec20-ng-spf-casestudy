package com.contact.service;

import java.util.List;

import com.contact.entity.Contact;

public interface ContactService {

	List<Contact> getAllContacts();

	void createContact(Contact con);

	Contact getContactById(int id);

	void deleteContact(int id);


}
