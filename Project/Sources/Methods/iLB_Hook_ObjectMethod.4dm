//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: iLB_Hook_ObjectMethod

//  ` This hook is called before the default Object Method for the listbox in the pointer object.
// Here you can override the default actions for the following events:

//    On Clicked 
//    On Header Clicked 
//    On After Sort 
//    On Selection Changed 
//    On Double Clicked 
//    On Drag Over 
//    On Drop 
//    On Begin Drag Over 
//    On Mouse Enter 
//    On Mouse Move 
//    On Mouse Leave 

// Access: Shared

// Parameters: $1=Table No = Longint; $2 = View No = Longint

// Returns: 1 or 0 -- pass 0 if you are handling the action, 1 if you want to use the default action


// Go to the example database to copy the example for this method
// This method was automatically generated by iLB on Jun 29, 2010.
// iLB is Copyright 2009 - 2010-- IBB Consulting, LLC 
// ----------------------------------------------------
C_POINTER:C301($1;$ptrObject)
C_LONGINT:C283($2;$iTable)
C_LONGINT:C283($3;$iView)
C_LONGINT:C283($iRecNum)

$ptrObject:=$1
$iTable:=$2
$iView:=$3

If ($ptrObject=(->OutputListBox)) & (Form event code:C388=On Double Clicked:K2:5)
	$iRecNum:=Selected record number:C246(Table:C252($iTable)->)
	UNLOAD RECORD:C212(Table:C252($iTable)->)
	Fnd_IO_DisplayRecord(Table:C252($iTable);$iRecNum)
	$0:=0
Else 
	$0:=1
End if 