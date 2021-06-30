// ----------------------------------------------------

// Object Method: [Invoices].Input.Invoices_TermsPopup_at


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


If (Form event code:C388=On Data Change:K2:15)
	Self:C308->{0}:=Fnd_Data_FormatText(Self:C308->{0})
End if 

If ((Form event code:C388=On Clicked:K2:4) | (Form event code:C388=On Data Change:K2:15))
	[Invoices:6]Terms:9:=Self:C308->{0}
End if 
