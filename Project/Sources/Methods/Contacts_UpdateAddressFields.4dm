//%attributes = {"shared":true}
// ----------------------------------------------------

// Project Method: Contacts_UpdateAddressFields


// Displays the proper set of address fields based on the selected country.


// Parameters: None


// Returns: Nothing


// Created by Dave Batton on Jul 13, 2004

// ----------------------------------------------------


Case of 
	: ((Contacts_IsUSA([Contacts:4]Country:9)) | ([Contacts:4]Country:9=""))
		OBJECT SET VISIBLE:C603(*;"Contacts_USCity@";True:C214)
		OBJECT SET VISIBLE:C603(*;"Contacts_USState@";True:C214)
		OBJECT SET VISIBLE:C603(*;"Contacts_USZip@";True:C214)
		OBJECT SET VISIBLE:C603(*;"Contacts_OtherCity@";False:C215)
		OBJECT SET VISIBLE:C603(*;"Contacts_OtherPostal@";False:C215)
		Contacts_StateLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"StateLabel")
		Contacts_PostalCodeLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"ZipCodeLabel")
		
	: ([Contacts:4]Country:9="Canada")
		OBJECT SET VISIBLE:C603(*;"Contacts_USCity@";True:C214)
		OBJECT SET VISIBLE:C603(*;"Contacts_USState@";True:C214)
		OBJECT SET VISIBLE:C603(*;"Contacts_USZip@";True:C214)
		OBJECT SET VISIBLE:C603(*;"Contacts_OtherCity@";False:C215)
		OBJECT SET VISIBLE:C603(*;"Contacts_OtherPostal@";False:C215)
		Contacts_StateLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"ProvinceLabel")
		Contacts_PostalCodeLabel_t:=Fnd_VS_FieldName(->[Contacts:4]Postal Code:8)
		
	Else 
		[Contacts:4]State:7:=""
		OBJECT SET VISIBLE:C603(*;"Contacts_USCity@";False:C215)
		OBJECT SET VISIBLE:C603(*;"Contacts_USState@";False:C215)
		OBJECT SET VISIBLE:C603(*;"Contacts_USZip@";False:C215)
		OBJECT SET VISIBLE:C603(*;"Contacts_OtherCity@";True:C214)
		OBJECT SET VISIBLE:C603(*;"Contacts_OtherPostal@";True:C214)
End case 
