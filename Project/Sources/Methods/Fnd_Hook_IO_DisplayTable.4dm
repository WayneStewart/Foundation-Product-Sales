//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_IO_DisplayTable

// This hook is called just before an output window is displayed.
// Here you can set the initial selection of records to display, configure the
//   toolbar, set the window title, or set the window position.

// Method Type: Public

// Parameters: None

// Returns: Nothing
// ----------------------------------------------------

// Use Fnd_Gen_CurrentTable to determine the current table.

// To change the default output form:
//  Fnd_IO_OutputFormName ("MyOutput")

// Examples of commands to modify the toolbar:
//   Fnd_IO_ToolbarIconGroup ("Card")  ` Options: Bold/Card/Native
//   Fnd_Tlbr_Style ("Small1")  ` Options: Large/Small1/Small2
//   Fnd_Tlbr_Divider_Add 
//   Fnd_Tlbr_Button_Add ("BttnName";"Preferences";"Fnd_Bttn_Settings";"Fnd_Pref_Display")

//   EXAMPLE CODE:

$out:=cs:C1710.foundation.Fnd_Out.new()

$out.isActive(True:C214)

Fnd_Out_Active(True:C214)

Case of 
	: (Fnd_Gen_CurrentTable=(->[Invoices:6]))
		Fnd_Tlbr_Style("Small2")
		Fnd_Out_Active(True:C214)
		Fnd_Out_AddField("InvoiceNumber"; 0; "Inv. No")
		Fnd_Out_AddField("InvoiceDate"; 0; "Date")
		Fnd_Out_AddField("contact.reversedFullName()"; 0; "Contact")
		Fnd_Out_AddField("Total"; 0; ""; 0; <>Gen_MoneyFormat_t)
		
		Fnd_Tlbr_Button_Add("BttnName"; "Preferences"; "Fnd_Bttn_Settings"; "Fnd_Pref_Display")
		
	: (Fnd_Gen_CurrentTable=(->[Contacts:4]))
		Fnd_Out_AddField(New object:C1471(\
			fo_field; "Formula: this.fullName()"; \
			fo_type; Is text:K8:3; \
			fo_title; "Contact"))
		Fnd_Out_AddField(New object:C1471(\
			fo_field; "Formula: this.reversedFullName()"; \
			fo_type; Is text:K8:3; \
			fo_title; "Contact Reversed"))
		Fnd_Out_Active(True:C214)
		
	: (Fnd_Gen_CurrentTable=(->[Products:5]))
		Fnd_IO_ToolbarIconGroup("Card")
		Fnd_IO_MultiWindow(False:C215)  // Display the input form in the same window as the output form.
		Fnd_IO_AddMultipleRecords(True:C214)  // Add new records until Cancel is clicked.
End case 

