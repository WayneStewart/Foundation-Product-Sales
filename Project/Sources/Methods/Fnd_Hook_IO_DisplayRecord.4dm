//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_IO_DisplayRecord

// This hook is called just before an input window is displayed.
// Here you can set the window title or position, or specify the
//   input form to use.

// Method Type: Public

// Parameters: None

// Returns: Nothing
// ----------------------------------------------------

// Example Code
//Case of 
//: (Fnd_Gen_CurrentTable =(->[Products]))
//Fnd_Wnd_Title ([Products]Product Name)

//End case 









Case of 
	: (Fnd_Gen_CurrentTable=(->[Company Info:8]))
		Fnd_Wnd_Title(Fnd_Loc_GetString("Loc_Company";"CompanySettings"))
		Fnd_Wnd_Type(Plain fixed size window:K34:6)
		Fnd_Wnd_CloseBox(False:C215)
		Fnd_IO_DisplayNavButtons(False:C215)
		
	: (Fnd_Gen_CurrentTable=(->[Contacts:4]))
		Fnd_Wnd_Title("Contact: "+Contacts_FullName)  // See also Contacts_UpdateWindowTitle.
		
	: (Fnd_Gen_CurrentTable=(->[Invoices:6]))
		If ([Invoices:6]Invoice Number:3#0)  // not a new record
			Fnd_Wnd_Title("Invoice: "+String:C10([Invoices:6]Invoice Number:3;"|Invoices_InvoiceNumberFormat"))
		End if 
		
End case 
