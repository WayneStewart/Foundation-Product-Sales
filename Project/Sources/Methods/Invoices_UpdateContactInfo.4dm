//%attributes = {"shared":true}
// ----------------------------------------------------

// Project Method: Invoices_UpdateContactInfo


// Called from various places in the [Invoices].Input form to update the

//   information displayed about the associated [Contacts] record.


// Parameters: None


// Returns: Nothing


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


READ ONLY:C145([Contacts:4])
QUERY:C277([Contacts:4];[Contacts:4]Contact_ID:1=[Invoices:6]Contact_ID:2)

Invoices_ContactName_t:=Invoices_GetContactInfo

If ([Invoices:6]Contact_ID:2>0)
	DISABLE BUTTON(->Invoices_NewContactButton_i)
	DISABLE BUTTON(->Invoices_SelectContactButton_i)
	ENABLE BUTTON(->Invoices_ClearContactButton_i)
	ENABLE BUTTON(->Invoices_ViewContactButton_i)
Else 
	ENABLE BUTTON(->Invoices_NewContactButton_i)
	ENABLE BUTTON(->Invoices_SelectContactButton_i)
	DISABLE BUTTON(->Invoices_ClearContactButton_i)
	DISABLE BUTTON(->Invoices_ViewContactButton_i)
End if 
