// ----------------------------------------------------

// Object Method: [Contacts].Input.First Name


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Data Change:K2:15)
		Self:C308->:=Fnd_Data_FormatText(Self:C308->)
		Contacts_UpdateWindowTitle
End case 
