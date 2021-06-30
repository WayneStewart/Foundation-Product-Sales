//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: iLB_Hook_BrowserMenu

//  ` This hook is called from iLB_BrowserMenu when clicked.

// Access: Shared

// Parameters: $1 = Menu ID = Longint 


//      $0 = Menu Name|Method Name = Text

// Returns: Menu Name and Method Name separated by a " | "


// Go to the example database to copy the example for this method
// This method was automatically generated by iLB on Nov 26, 2012.
// iLB is Copyright 2009 - 2012-- IBB Consulting, LLC 
// ----------------------------------------------------

C_LONGINT:C283($1;$iMenuID)
C_TEXT:C284($2;$tCommand)

$iMenuID:=$1
$tCommand:=""

//Case of 
//:($iMenuID=100 

//Else 

//End Case 

$0:=$tCommand

