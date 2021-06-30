// ----------------------------------------------------

// Object Method: Invoices_ViewContactButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Invoices_UpdateContactInfo  // This will make sure the [Contacts] record is loaded.
			
		Fnd_IO_DisplayRecord(->[Contacts:4];Record number:C243([Contacts:4]))
End case 
