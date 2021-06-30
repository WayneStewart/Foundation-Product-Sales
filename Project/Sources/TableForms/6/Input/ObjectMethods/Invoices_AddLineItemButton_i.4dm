// ----------------------------------------------------

// Object Method: Invoices_AddLineItemButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		CREATE RECORD:C68([Line Items:7])
		Fnd_SqNo_SetRecordID
		[Line Items:7]Invoice_ID:2:=[Invoices:6]Invoice_ID:1
		[Line Items:7]Quantity:4:=1
		SAVE RECORD:C53([Line Items:7])
		Invoices_LoadRelatedLineItems
End case 
