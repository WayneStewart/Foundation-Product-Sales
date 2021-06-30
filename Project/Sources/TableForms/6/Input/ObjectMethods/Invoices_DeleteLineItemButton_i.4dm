// ----------------------------------------------------

// Object Method: Invoices_DeleteLineItemButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		DELETE RECORD:C58([Line Items:7])
		Invoices_UpdateTotal
End case 
