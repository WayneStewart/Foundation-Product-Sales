// ----------------------------------------------------

// Form Method: [Contacts].Report


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Printing Detail:K2:18)
		Contacts_NameAddress_t:=Contacts_FullName+Char:C90(Carriage return:K15:38)
		If ([Contacts:4]Company:4#"")
			Contacts_NameAddress_t:=Contacts_NameAddress_t+[Contacts:4]Company:4+Char:C90(Carriage return:K15:38)
		End if 
		Contacts_NameAddress_t:=Contacts_NameAddress_t+Contacts_FullAddress(False:C215;True:C214)
		
		Contacts_PhoneEmail_t:=""
		If ([Contacts:4]Phone:10#"")
			Contacts_PhoneEmail_t:=Contacts_PhoneEmail_t+"Phone: "+[Contacts:4]Phone:10+Char:C90(Carriage return:K15:38)
		End if 
		If ([Contacts:4]Fax:11#"")
			Contacts_PhoneEmail_t:=Contacts_PhoneEmail_t+"Fax: "+[Contacts:4]Fax:11+Char:C90(Carriage return:K15:38)
		End if 
		If ([Contacts:4]Email Address:12#"")
			Contacts_PhoneEmail_t:=Contacts_PhoneEmail_t+"Email: "+[Contacts:4]Email Address:12+Char:C90(Carriage return:K15:38)
		End if 
		If ([Contacts:4]Web Site:13#"")
			Contacts_PhoneEmail_t:=Contacts_PhoneEmail_t+"Web: "+[Contacts:4]Web Site:13+Char:C90(Carriage return:K15:38)
		End if 
End case 
