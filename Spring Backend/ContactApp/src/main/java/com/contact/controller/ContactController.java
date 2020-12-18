package com.contact.controller;

import java.util.List;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.contact.entity.Contact;
import com.contact.service.ContactService;

@Controller
@RequestMapping("/contact")
public class ContactController {
	
	@Autowired
	ContactService contactService;
		

	@RequestMapping("/list")
	public String contactList(Model model) {
		List<Contact> conlist=contactService.getAllContacts();
		model.addAttribute("ContactList",conlist );
		return "contact-list";
	}
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		Contact con=new Contact();
		model.addAttribute("contact",con);
		return "contact-form";
	}
	
	@RequestMapping("/addContact")
	public String addContactDetails(@ModelAttribute("contact") @Valid Contact con,BindingResult br,Model model) {
		if(br.hasErrors()) {
			System.out.println(br);
			return "contact-form";
		}
		else {
			contactService.createContact(con);
			return "redirect:/contact/list";
		}
	}
	
	@RequestMapping("/updateForm")
	public String updateContact(@RequestParam("contactId")int id,Model model) {
		Contact con=contactService.getContactById(id);
		model.addAttribute("contact",con);
		return "contact-form";
	}
	
	@RequestMapping("/deleteContact")
	public String deleteContact(@RequestParam("contactId")int id,Model model) {
		//System.out.println(id);
		contactService.deleteContact(id);
		return "redirect:/contact/list";
	}
	
	
	@RequestMapping("/logout")
	public String log() {
		return "logout";
	}
}
