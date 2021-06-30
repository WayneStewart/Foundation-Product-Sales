// ----------------------------------------------------
// Object Method: ◊Pref_NavPaletteCheckbox_i
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Fnd_Pref_SetBoolean("Fnd_Nav: Open at Startup";(Self:C308->=1))
End case 
