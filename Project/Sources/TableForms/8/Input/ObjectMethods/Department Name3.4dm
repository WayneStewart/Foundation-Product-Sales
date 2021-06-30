// ----------------------------------------------------
// Object Method: Email Address

// Created by Dave Batton on Oct 1, 2004
// Modified by Dave Batton on Oct 1, 2004
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Data Change:K2:15)
		If (Fnd_Data_EmailAddressError(Self:C308->)>0)
			Fnd_Wnd_Position(Fnd_Dlg_CenterOnWindow)
			Fnd_Dlg_Alert(Fnd_Loc_GetString("Loc_General";"EmailAddressError"))
			REJECT:C38(Self:C308->)
			HIGHLIGHT TEXT:C210(Self:C308->;1;MAXTEXTLENBEFOREV11:K35:3)
		End if 
End case 
