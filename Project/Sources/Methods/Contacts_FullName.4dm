//%attributes = {"shared":true}
// ----------------------------------------------------

// Project Method: Contacts_FullName


// Returns the full name from the currently loaded [Contacts] record.


// Parameters: None


// Returns:

//   $0 : Text : The full name of the person.


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_TEXT:C284($0;$fullName)

$fullName:=[Contacts:4]First Name:2+" "+[Contacts:4]Last Name:3

$0:=$fullName
