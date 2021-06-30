//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Host_SaveList ($listName_t; $list_blob)

// Allows a component to update or save the host database's lists.

// Access: Shared

// Parameters: 
//   $1 : Text : The list name

//   $2 : Blob : The list as a blob

// Returns: Nothing

// This method was automatically generated by Foundation on Feb 3, 2011.
// ----------------------------------------------------

C_TEXT:C284($1)
C_BLOB:C604($2)
_O_C_INTEGER:C282($list_i)
$list_i:=BLOB to list:C557($2)
SAVE LIST:C384($list_i;$1)
