// ----------------------------------------------------

// Object Method: Invoices_NewContactButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Fnd_IO_DisplayRecord(->[Contacts:4];New record:K29:1)
End case 
