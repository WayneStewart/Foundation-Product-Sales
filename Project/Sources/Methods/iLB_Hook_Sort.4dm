//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: iLB_Hook_Sort

//  ` This hook is called from iLB_Sort when the sort column is an expression.

// Access: Shared

// Parameters: $1=Table Num = Longint 
//  $2 = View Num = Longint 
//  $3 = Column Num = Longint

//      $0=Reset Direction Indicator = Longint

// Returns: 1 or 0 -- pass 1 if you want ILB to reset the column sort indicator


// Go to the example database to copy the example for this method
// This method was automatically generated by iLB on Nov 26, 2012.
// iLB is Copyright 2009 - 2012-- IBB Consulting, LLC 
// ----------------------------------------------------

C_LONGINT:C283($1;$iTable)
C_LONGINT:C283($2;$iView)
C_LONGINT:C283($3;$iColumn)
C_LONGINT:C283($4;$iSetDirection)

$iTable:=$1
$iView:=$2
$iColumn:=$3
$iSetDirection:=0

//$tFormula:=iLB_Parameter ($iTable;$iView;$iColumn;iLB_formula)

//Case of 
//:($tFormula="Some Formula)" 

//Else 

//End Case 

$0:=$iSetDirection

