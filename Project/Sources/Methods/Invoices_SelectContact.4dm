//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: Invoices_SelectContact --> Longint

// Displays a list of [Contacts] from which the user can select a
//   single contact record.
// Sets the OK variable to 1 if a contact is selected.

// Parameters: None

// Returns: 
//   $0 : Longint : [Contact]Contact_ID value of the selected contact.

// Created by 4D, Inc. on May 2, 2003
// Modified by 4D, Inc. on Jun 27, 2003
//   Now the records are sorted before creating the arrays.
// ----------------------------------------------------

C_LONGINT:C283($0;$i)

READ ONLY:C145([Contacts:4])
ALL RECORDS:C47([Contacts:4])
ORDER BY:C49([Contacts:4];[Contacts:4]Last Name:3;>;[Contacts:4]First Name:2;>)  // 4D030627 - Added
SELECTION TO ARRAY:C260([Contacts:4]Contact_ID:1;$aContactIDs;[Contacts:4]First Name:2;$FirstNames_at;[Contacts:4]Last Name:3;Invoices_ContactNames_at;[Contacts:4]Company:4;Invoices_ContactCompanies_at)

For ($i;1;Size of array:C274($FirstNames_at))
	Invoices_ContactNames_at{$i}:=$FirstNames_at{$i}+" "+Invoices_ContactNames_at{$i}
End for 

Fnd_Wnd_Type(Movable form dialog box:K39:8)
Fnd_Wnd_Position(Fnd_Wnd_CenterOnWindow)
Fnd_Wnd_Title("Select a Contact")
Fnd_Wnd_OpenFormWindow(->[Invoices:6];"SelectContact")
DIALOG:C40([Invoices:6];"SelectContact")
CLOSE WINDOW:C154

If (OK=1)
	$0:=$aContactIDs{Invoices_ContactNames_at}
Else 
	$0:=0
End if 

// Clear the process arrays to release the RAM they're using.
ARRAY TEXT:C222(Invoices_ContactNames_at;0)
ARRAY TEXT:C222(Invoices_ContactCompanies_at;0)