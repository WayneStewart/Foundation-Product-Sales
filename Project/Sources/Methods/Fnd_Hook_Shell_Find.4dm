//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_Shell_Find

// A hook for setting up Foundation's Find dialog before it's displayed.
// Call Fnd_Gen_CurrentTable to determine the table in use.

// Method Type: Public

// Parameters: None

// Returns: Nothing
// ----------------------------------------------------

Case of 
	: (Macintosh option down:C545)  // Also works for the Windows' Alt key.
		Fnd_Menu_QueryEditor  // Display 4D's Query Editor.
		
	: (Fnd_Gen_CurrentTable=(->[Contacts:4]))
		ARRAY POINTER:C280(Contacts_FindFields_aptr;3)
		Contacts_FindFields_aptr{1}:=->[Contacts:4]First Name:2
		Contacts_FindFields_aptr{2}:=->[Contacts:4]Last Name:3
		Contacts_FindFields_aptr{3}:=->[Contacts:4]Company:4
		Fnd_Find_AddMultiField(->Contacts_FindFields_aptr;Fnd_Loc_GetString("Loc_Contacts";"AnyNameField"))
		Fnd_Find_AddSeparator
		
		Fnd_Find_AddTable(Fnd_Gen_CurrentTable)
		Fnd_Find_AddSeparator
		Fnd_Find_AddField(->[Invoices:6]Invoice Number:3)
		
		Fnd_Find_Display
		ARRAY POINTER:C280(Contacts_FindFields_aptr;0)  // Clear the array.
		
	Else 
		Fnd_Find_Display
End case 

