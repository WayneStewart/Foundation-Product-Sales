// ----------------------------------------------------
// Object Method: Contacts_ViewInvoiceButton_i

// Created by 4D, Inc. on May 2, 2003
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		If (Modified record:C314(Current form table:C627->))
			Fnd_Wnd_Position(Fnd_Dlg_CenterOnWindow)
			Fnd_Dlg_SetIcon(Fnd_Dlg_NoteIcon)
			Fnd_Dlg_Confirm(Fnd_Loc_GetString("Loc_Contacts";"SaveChanges");Fnd_Loc_GetString("Loc_Contacts";"SaveButton");Fnd_Loc_GetString("Loc_Contacts";"NotYetButton"))
			If (OK=1)
				SAVE RECORD:C53(Current form table:C627->)
			End if 
		End if 
		
		Fnd_IO_DisplayRecord(->[Invoices:6];Record number:C243([Invoices:6]))
End case 
