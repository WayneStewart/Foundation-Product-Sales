// ----------------------------------------------------

// Object Method: [Company Info].Input.Company_TermsPopup_at


// Created by 4D, Inc. on May 2, 2003

// Modified by Dave Batton on Oct 1, 2004

// ----------------------------------------------------


If (Form event code:C388=On Data Change:K2:15)
	Self:C308->{0}:=Fnd_Data_FormatText(Self:C308->{0})
End if 

If ((Form event code:C388=On Clicked:K2:4) | (Form event code:C388=On Data Change:K2:15))
	[Company Info:8]Default Terms:8:=Self:C308->{0}
End if 
