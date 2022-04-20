//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------

// Project Method: Contacts_FullAddress (with name; with country)


// Builds a complete mailing address on-the-fly based on the currently

//   loaded [Contacts] record.

// Returns a blank string if there's no address.


// Parameters: None


// Returns:

//   $0 : Text : The full mailing address.


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_BOOLEAN:C305($1;$2;$withName;$withCountry)
C_TEXT:C284($0;$fullAddress)

$withName:=$1
$withCountry:=$2

$fullAddress:=""

If ($withName)
	If ([Contacts:4]Company:4="")
		$fullAddress:=$fullAddress+Contacts_FullName+Char:C90(Carriage return:K15:38)
	Else 
		$fullAddress:=[Contacts:4]Company:4+Char:C90(Carriage return:K15:38)
		$fullAddress:=$fullAddress+Fnd_Loc_GetString("Loc_Invoices";"Attn")+" "+Contacts_FullName+Char:C90(Carriage return:K15:38)
	End if 
End if 

// We don't add anything unless there's something to add.

// The goal is to return a blank string if there's no address information.

If ([Contacts:4]Address:5#"")
	$fullAddress:=$fullAddress+[Contacts:4]Address:5+Char:C90(Carriage return:K15:38)
End if 

If ((Contacts_IsUSA([Contacts:4]Country:9)) | ([Contacts:4]Country:9="Canada"))
	$fullAddress:=$fullAddress+[Contacts:4]City:6
End if 

If ([Contacts:4]State:7#"")
	If ([Contacts:4]City:6#"")
		$fullAddress:=$fullAddress+", "
	End if 
	$fullAddress:=$fullAddress+[Contacts:4]State:7
End if 

If ([Contacts:4]Postal Code:8#"")
	If ((Contacts_IsUSA([Contacts:4]Country:9)) | ([Contacts:4]Country:9="Canada"))
		If (([Contacts:4]City:6#"") | ([Contacts:4]State:7#""))
			$fullAddress:=$fullAddress+" "
		End if 
	End if 
	$fullAddress:=$fullAddress+[Contacts:4]Postal Code:8
End if 

If (Not:C34((Contacts_IsUSA([Contacts:4]Country:9)) | ([Contacts:4]Country:9="Canada")))
	$fullAddress:=$fullAddress+" "+[Contacts:4]City:6
End if 

If (([Contacts:4]City:6#"") | ([Contacts:4]State:7#"") | ([Contacts:4]Postal Code:8#""))
	$fullAddress:=$fullAddress+Char:C90(Carriage return:K15:38)
End if 

If ($withCountry)
	$fullAddress:=$fullAddress+[Contacts:4]Country:9+Char:C90(Carriage return:K15:38)
End if 

$0:=$fullAddress
