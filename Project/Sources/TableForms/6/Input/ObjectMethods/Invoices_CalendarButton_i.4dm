// ----------------------------------------------------
// Object Method: Invoices_CalendarButton_i

// Created by Dave Batton on Mar 30, 2005
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Fnd_Date_Calendar(->[Invoices:6]Invoice Date:4)
End case 
