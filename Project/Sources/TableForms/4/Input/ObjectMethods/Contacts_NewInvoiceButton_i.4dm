// ----------------------------------------------------
// Object Method: Contacts_NewInvoiceButton_i

// Created by 4D, Inc. on May 2, 2003
// Modified by Dave Batton on Jun 8, 2004
//   Localized.
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Case of 
			: (Is new record:C668(Current form table:C627->))
				Fnd_Wnd_Position(Fnd_Wnd_CenterOnWindow)
				Fnd_Dlg_SetIcon(Fnd_Dlg_NoteIcon)
				Fnd_Dlg_Confirm(Fnd_Loc_GetString("Loc_Contacts";"RecordWillBeSaved");Fnd_Loc_GetString("Loc_Contacts";"SaveButton");Fnd_Loc_GetString("Loc_Contacts";"CancelButton"))
				If (OK=1)
					SAVE RECORD:C53(Current form table:C627->)
				End if 
				
			: (Modified record:C314(Current form table:C627->))
				Fnd_Wnd_Position(Fnd_Dlg_CenterOnWindow)
				Fnd_Dlg_SetIcon(Fnd_Dlg_NoteIcon)
				Fnd_Dlg_Confirm(Fnd_Loc_GetString("Loc_Contacts";"SaveChanges");Fnd_Loc_GetString("Loc_Contacts";"SaveButton");Fnd_Loc_GetString("Loc_Contacts";"NotYetButton"))
				If (OK=1)
					SAVE RECORD:C53(Current form table:C627->)
				End if 
				OK:=1  // So even if they click Not Yet it will still continue.
				
			Else 
				OK:=1
		End case 
		
		
		If (OK=1)
			// The <>Invoices_FromContactID_i variable tells the new invoice what contact to use.
			<>Invoices_FromContactID_i:=[Contacts:4]Contact_ID:1
			Fnd_IO_DisplayRecord(->[Invoices:6];New record:K29:1)
		End if 
End case 
