// ----------------------------------------------------

// Object Method: Invoices_ClearContactButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		[Invoices:6]Contact_ID:2:=0
		Invoices_UpdateContactInfo
End case 
