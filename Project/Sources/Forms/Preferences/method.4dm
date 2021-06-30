// ----------------------------------------------------
// Form Method: Fnd_Pref_Preferences
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Load:K2:1)
		OBJECT SET TITLE:C194(<>Pref_NavPaletteCheckbox_i;Fnd_Loc_GetString("Fnd_Pref";"OpenNavAtStartup"))
		<>Pref_NavPaletteCheckbox_i:=Num:C11(Fnd_Pref_GetBoolean("Fnd_Nav: Open at Startup"))
		
		OBJECT SET TITLE:C194(<>Contacts_AtStartupCheckbox_i;Fnd_Loc_GetString("Loc_General";"ContactsAtStartup"))
		<>Contacts_AtStartupCheckbox_i:=Num:C11(Fnd_Pref_GetBoolean("Display Contacts at Startup"))
		
		OBJECT SET TITLE:C194(<>Invoices_AtStartupCheckbox_i;Fnd_Loc_GetString("Loc_General";"InvoicesAtStartup"))
		<>Invoices_AtStartupCheckbox_i:=Num:C11(Fnd_Pref_GetBoolean("Display Invoices at Startup"))
End case 

Fnd_Gen_FormMethod
