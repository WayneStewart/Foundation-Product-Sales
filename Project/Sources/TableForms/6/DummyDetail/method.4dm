// ----------------------------------------------------

// Form Method: [Invoices].DummyDetail


// Displays the double-clicked invoice in a new window, then just cancels

//   so the user is returned back in the original contact input form.


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Load:K2:1)
		Fnd_IO_DisplayRecord(->[Invoices:6];Record number:C243([Invoices:6]))
		CANCEL:C270
End case 
