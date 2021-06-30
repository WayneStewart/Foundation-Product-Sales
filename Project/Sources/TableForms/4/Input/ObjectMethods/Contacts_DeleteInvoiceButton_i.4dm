// ----------------------------------------------------

// Object Method: Contacts_DeleteInvoiceButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		CONFIRM:C162("Are you sure you want to delete this invoice?";"Delete";"Cancel")
		If (OK=1)
			READ WRITE:C146([Invoices:6])
			LOAD RECORD:C52([Invoices:6])
			
			If (Locked:C147([Invoices:6]))
				ALERT:C41("The record is locked and can't be deleted now.")
			Else 
				DELETE RECORD:C58([Invoices:6])
			End if 
			
			READ ONLY:C145([Invoices:6])
			Contacts_LoadRelatedInvoices
		End if 
End case 
