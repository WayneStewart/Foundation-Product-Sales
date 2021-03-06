//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Host_GetPictureFromLibrary (name; ->image)

// Allows a component to get a picture from the host database's picture library.

// Access: Shared

// Parameters: 
//   $1 : Text : The picture name
//   $2 : Pointer : Receives the image

// Returns: Nothing

// This method was automatically generated by Foundation on Sep 30, 2009.
// ----------------------------------------------------

C_TEXT:C284($1;$name_t)
C_POINTER:C301($2;$image_ptr)

$name_t:=$1
$image_ptr:=$2

GET PICTURE FROM LIBRARY:C565($name_t;$image_ptr->)
