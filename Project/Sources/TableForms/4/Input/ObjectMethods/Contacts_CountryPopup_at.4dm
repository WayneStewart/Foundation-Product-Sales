// ----------------------------------------------------

// Object Method: [Contacts].Input.Contacts_CountryPopup_at


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


If (Form event code:C388=On Data Change:K2:15)
	Self:C308->{0}:=Fnd_Data_FormatText(Self:C308->{0})
	If (Contacts_IsUSA(Self:C308->{0}))
		Self:C308->{0}:="United States"
	End if 
End if 

If ((Form event code:C388=On Data Change:K2:15) | (Form event code:C388=On Clicked:K2:4))
	[Contacts:4]Country:9:=Self:C308->{0}
	Contacts_UpdateAddressFields
End if 
