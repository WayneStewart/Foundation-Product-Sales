//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------

// Project Method: LineItems_UpdateExtended


// Updates the extended price after the product, quantity, or price of a

//   line item is modified.  This also updates the invoice subtotal and total

//   if the currently loaded [Invoices] record is the parent of the [Line Items]

//   record.


// Parameters: None


// Returns: Nothing


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


[Line Items:7]Extended:7:=Round:C94([Line Items:7]Quantity:4*[Line Items:7]Sell Price:6;2)
SAVE RECORD:C53([Line Items:7])

If ([Invoices:6]Invoice_ID:1=[Line Items:7]Invoice_ID:2)
	Invoices_UpdateTotal
End if 
