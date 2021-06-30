// ----------------------------------------------------

// Object Method: Invoices_SelectContactButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_LONGINT:C283($contactID)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		$contactID:=Invoices_SelectContact
		If (OK=1)
			[Invoices:6]Contact_ID:2:=$contactID
			Invoices_UpdateContactInfo
		End if 
End case 
