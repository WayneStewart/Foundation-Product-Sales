// ----------------------------------------------------

// Object Method: Product Number


// When modified, looks up the product number in the [Products] table.

// If no matches are found or multiple matches are found, a selection list

//   is presented so the user can choose a product.


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_LONGINT:C283($productID)

Case of 
	: (Form event code:C388=On Data Change:K2:15)
		READ ONLY:C145([Products:5])
		
		If (Self:C308->="")
			REDUCE SELECTION:C351([Products:5];0)
			
		Else 
			QUERY:C277([Products:5];[Products:5]Product Number:2=(Self:C308->+"@"))
			
			Case of 
				: (Records in selection:C76([Products:5])=0)
					ALL RECORDS:C47([Products:5])
					$productID:=LineItems_SelectProduct
					If (OK=1)
						QUERY:C277([Products:5];[Products:5]Product_ID:1=$productID)
					Else 
						REDUCE SELECTION:C351([Products:5];0)
					End if 
					
				: (Records in selection:C76([Products:5])>1)
					$productID:=LineItems_SelectProduct
					If (OK=1)
						QUERY:C277([Products:5];[Products:5]Product_ID:1=$productID)
					Else 
						REDUCE SELECTION:C351([Products:5];0)
					End if 
			End case 
		End if 
		
		
		Self:C308->:=[Products:5]Product Number:2
		[Line Items:7]Product_ID:3:=[Products:5]Product_ID:1
		[Line Items:7]List Price:5:=[Products:5]List Price:5
		[Line Items:7]Sell Price:6:=[Line Items:7]List Price:5
		
		LineItems_UpdateExtended
End case 
