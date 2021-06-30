// ----------------------------------------------------

// Object Method: <>Contacts_AtStartupCheckbox_i

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Fnd_Pref_SetBoolean("Display Contacts at Startup";(Self:C308->=1))
End case 
