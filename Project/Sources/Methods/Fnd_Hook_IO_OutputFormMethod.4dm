//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_IO_OutputFormMethod

// This hook is called from the Fnd_IO_OutputFormMethod method during all output form events.

// Access Type: Public

// Parameters: None

// Returns: Nothing
// ----------------------------------------------------

// Call 4D's 'Current form table' or Foundation's Fnd_Gen_CurrentTable function
// to determine the current table.
// Use 4D's 'Form event' function to determine the current form event.

var $formEventCode_i : Integer
var $currentTable_ptr : Pointer

$formEventCode_i:=Form event code:C388
$currentTable_ptr:=Fnd_Gen_CurrentTable


Case of 
	: ($formEventCode_i=On Load:K2:1)
		
		Case of 
			: ($currentTable_ptr=(->[Invoices:6])) | ($currentTable_ptr=(->[Products:5]))\
				
				LISTBOX SET PROPERTY:C1440(*; "Fnd_Out_ListBox"; lk meta expression:K53:75; "LBOX_highValue")
				
				
				
		End case 
		
		
		
		
End case 

