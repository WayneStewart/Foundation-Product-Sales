// ----------------------------------------------------

// Object Method: Invoices_LookupLineItemButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_LONGINT:C283($productID)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		ALL RECORDS:C47([Products:5])
		$productID:=LineItems_SelectProduct
		
		If (OK=1)
			QUERY:C277([Products:5];[Products:5]Product_ID:1=$productID)
			
			If (Records in selection:C76([Products:5])=1)
				CREATE RECORD:C68([Line Items:7])
				Fnd_SqNo_SetRecordID
				[Line Items:7]Invoice_ID:2:=[Invoices:6]Invoice_ID:1
				[Line Items:7]Quantity:4:=1
				[Line Items:7]Product_ID:3:=[Products:5]Product_ID:1
				[Line Items:7]Product Number:8:=[Products:5]Product Number:2
				[Line Items:7]List Price:5:=[Products:5]List Price:5
				[Line Items:7]Sell Price:6:=[Products:5]List Price:5
				LineItems_UpdateExtended  // This will save the record and reload them all.
					
			Else 
				TRACE:C157  // This shouldn't happen!
					
			End if 
		End if 
End case 
