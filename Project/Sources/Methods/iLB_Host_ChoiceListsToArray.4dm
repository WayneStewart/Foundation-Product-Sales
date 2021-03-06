//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: iLB_Host_ChoiceListsToArray (->array; ->array)

// Allows a component to read the host database's choice lists.

// Access: Shared

// Parameters: 
//   $1 : Pointer : The longint array of choice list numbers
//   $2 : Pointer : The text array of choice list names

// Returns: Nothing

// This method was automatically generated by iLB on Jun 29, 2010.
// ----------------------------------------------------

C_POINTER:C301($1;$array_ptr1)
C_POINTER:C301($2;$array_ptr2)

$array_ptr1:=$1
$array_ptr2:=$2

LIST OF CHOICE LISTS:C957($array_ptr1->;$array_ptr2->)
