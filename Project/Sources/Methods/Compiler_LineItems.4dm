//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------

// Project Method: Compiler_LineItems


// Compiler variables related to the Line Item handling routines.

// Just for use by the compiler.  Not called directly.


// Parameters: None


// Returns: Nothing


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


// Variables

C_LONGINT:C283(LINEITEMS_OKBUTTON_I)
C_LONGINT:C283(LINEITEMS_CANCELBUTTON_I)
C_REAL:C285(LINEITEMS_EXTENDED_R)
C_TEXT:C284(LINEITEMS_PRODUCTNUMBER_T)

// Interprocess Variables


// Arrays

ARRAY TEXT:C222(LINEITEMS_PRODUCTNAMES_AT;0)
ARRAY TEXT:C222(LINEITEMS_PRODUCTNUMBERS_AT;0)
ARRAY REAL:C219(LINEITEMS_PRODUCTPRICES_AR;0)

// Parameters

C_LONGINT:C283(LineItems_SelectProduct;$0)