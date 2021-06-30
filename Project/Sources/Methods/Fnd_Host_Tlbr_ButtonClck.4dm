//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Host_Tlbr_ButtonClck (message)

// Allows a component to pass a pointer and the button name for the clicked button.

// Access: Shared

// Parameters: 
//   $1 : Pointer : The pointer to the button clicked

// Returns: Nothing

// This method was automatically generated by Foundation on Mar 1, 2010.
// ----------------------------------------------------

C_POINTER:C301($1;$ButtonPointer_ptr)
$ButtonPointer_ptr:=$1
C_LONGINT:C283($ignore_i)
C_TEXT:C284($ButtonName_t)
RESOLVE POINTER:C394($ButtonPointer_ptr;$ButtonName_t;$ignore_i;$ignore_i)
Fnd_Tlbr_Button_OnClicked($ButtonPointer_ptr;$ButtonName_t)
