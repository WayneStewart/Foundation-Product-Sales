//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------

// Project Method: Invoices_UpdateTotal


// Updates the invoice total based on all of the line items, the sales tax,

//   and the shipping charges.


// Parameters: None


// Returns: Nothing


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Invoices_LoadRelatedLineItems

[Invoices:6]Subtotal:5:=Sum:C1([Line Items:7]Extended:7)

UNLOAD RECORD:C212([Line Items:7])

[Invoices:6]Total:8:=[Invoices:6]Subtotal:5+[Invoices:6]Tax:6+[Invoices:6]Shipping:7
