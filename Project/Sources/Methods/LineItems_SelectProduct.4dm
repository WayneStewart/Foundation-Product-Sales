//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: LineItems_SelectProduct --> Longint

// Displays a list of [Products] from which the user can select a
//   single product record.  Assumes the records from which to select
//   are already loaded.
// Sets the OK variable to 1 if a Product is selected.

// Parameters: None

// Returns: 
//   $0 : Longint : [Products]Product_ID value of the selected record.

// Created by 4D, Inc. on May 2, 2003
// ----------------------------------------------------

C_LONGINT:C283($0)

ORDER BY:C49([Products:5];[Products:5]Product Number:2;>)
SELECTION TO ARRAY:C260([Products:5]Product_ID:1;$aProductIDs;[Products:5]Product Number:2;LineItems_ProductNumbers_at;[Products:5]Product Name:3;LineItems_ProductNames_at;[Products:5]List Price:5;LineItems_ProductPrices_ar)

Fnd_Wnd_Type(Movable form dialog box:K39:8)
Fnd_Wnd_Position(Fnd_Wnd_MacOSXSheet)
Fnd_Wnd_Title(Fnd_Loc_GetString("Loc_Products";"SelectWindowTitle"))
Fnd_Wnd_OpenFormWindow(->[Line Items:7];"SelectProduct")
DIALOG:C40([Line Items:7];"SelectProduct")
CLOSE WINDOW:C154

If (OK=1)
	$0:=$aProductIDs{LineItems_ProductNames_at}
Else 
	$0:=0
End if 

// Clear the process arrays to release the RAM they're using.
ARRAY TEXT:C222(LineItems_ProductNumbers_at;0)
ARRAY TEXT:C222(LineItems_ProductNames_at;0)
ARRAY REAL:C219(LineItems_ProductPrices_ar;0)