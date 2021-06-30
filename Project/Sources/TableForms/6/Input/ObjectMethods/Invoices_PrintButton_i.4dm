// ----------------------------------------------------
// Object Method: Invoices_PrintButton_i

// Created by 4D, Inc. on May 2, 2003
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		FORM SET OUTPUT:C54([Invoices:6];"Invoice")
		PRINT RECORD:C71([Invoices:6])
		FORM SET OUTPUT:C54([Invoices:6];"Output")
End case 
