// ----------------------------------------------------
// Form Method: [Invoices].Input

// Created by 4D, Inc. on May 2, 2003
// Modified by Dave Batton on May 22, 2004
//   Now checks that <>Contacts_AddRecordNumber_i is >0 rather than #0 to fix a bug.
// Modified by Dave Batton on Aug 29, 2004
//   Money formats are now handled procedurally.
// ----------------------------------------------------

C_LONGINT:C283(<>Invoices_FromContactID_i;<>Contacts_AddRecordNumber_i;$move_i)
C_LONGINT:C283($left_i;$top_i;$right_i;$bottom_i;$width_i;$height_i)
C_TEXT:C284($windowTitle_t)

Case of 
	: (Form event code:C388=On Load:K2:1)
		// Properly size the "Number:" label
		OBJECT GET COORDINATES:C663(<>Invoices_NumberLabel_t;$left_i;$top_i;$right_i;$bottom_i)
		OBJECT GET BEST SIZE:C717(<>Invoices_NumberLabel_t;$width_i;$height_i)
		OBJECT MOVE:C664(<>Invoices_NumberLabel_t;$left_i;$top_i;$left_i+$width_i;$bottom_i;*)
		OBJECT MOVE:C664([Invoices:6]Invoice Number:3;$width_i-($right_i-$left_i);0)  // Adjust the position of the Invoice Number field.
		
		// Do the same to the "Terms:" label
		OBJECT GET COORDINATES:C663(<>Invoices_TermsLabel_t;$left_i;$top_i;$right_i;$bottom_i)
		OBJECT GET BEST SIZE:C717(<>Invoices_TermsLabel_t;$width_i;$height_i)
		OBJECT MOVE:C664(<>Invoices_TermsLabel_t;$left_i;$top_i;$left_i+$width_i;$bottom_i;*)
		OBJECT MOVE:C664(Invoices_TermsPopup_at;$width_i-($right_i-$left_i);0)  // Adjust the position of the Terms combo box.
		
		// We can use a Foundation routine for the "Customer:" label and field,
		//   since we want to maintain the overall width of the two objects.
		Fnd_Loc_FixLabelWidths(-><>Invoices_ContactLabel_t;->Invoices_ContactName_t)
		
		// Localize the form.
		$move_i:=Fnd_Gen_ButtonText(->Invoices_ViewContactButton_i;Fnd_Loc_GetString("Loc_Invoices";"ViewButton");Align right:K42:4)
		OBJECT MOVE:C664(Invoices_ClearContactButton_i;$move_i;0)
		OBJECT MOVE:C664(Invoices_SelectContactButton_i;$move_i;0)
		OBJECT MOVE:C664(Invoices_NewContactButton_i;$move_i;0)
		
		$move_i:=Fnd_Gen_ButtonText(->Invoices_ClearContactButton_i;Fnd_Loc_GetString("Loc_Invoices";"ClearButton");Align right:K42:4)
		OBJECT MOVE:C664(Invoices_SelectContactButton_i;$move_i;0)
		OBJECT MOVE:C664(Invoices_NewContactButton_i;$move_i;0)
		
		$move_i:=Fnd_Gen_ButtonText(->Invoices_SelectContactButton_i;Fnd_Loc_GetString("Loc_Invoices";"SelectButton");Align right:K42:4)
		OBJECT MOVE:C664(Invoices_NewContactButton_i;$move_i;0)
		
		Fnd_Gen_ButtonText(->Invoices_NewContactButton_i;Fnd_Loc_GetString("Loc_Invoices";"NewButton");Align right:K42:4)
		
		$move_i:=Fnd_Gen_ButtonText(->Invoices_AddLineItemButton_i;Fnd_Loc_GetString("Loc_Invoices";"AddItemButton");Align left:K42:2)
		OBJECT MOVE:C664(Invoices_LookupLineItemButton_i;$move_i;0)
		OBJECT MOVE:C664(Invoices_DeleteLineItemButton_i;$move_i;0)
		
		$move_i:=Fnd_Gen_ButtonText(->Invoices_LookupLineItemButton_i;Fnd_Loc_GetString("Loc_Invoices";"LookupItemButton");Align left:K42:2)
		OBJECT MOVE:C664(Invoices_DeleteLineItemButton_i;$move_i;0)
		
		Fnd_Gen_ButtonText(->Invoices_DeleteLineItemButton_i;Fnd_Loc_GetString("Loc_Invoices";"DeleteItemButton");Align left:K42:2)
		
		Fnd_Gen_ButtonText(->Invoices_PrintButton_i;Fnd_Loc_GetString("Loc_Invoices";"PrintButton");Align left:K42:2)
		
		$move_i:=Fnd_Gen_ButtonText(->Invoices_OKButton_i;Fnd_Loc_GetString("Loc_Invoices";"OKButton");Align right:K42:4)
		OBJECT MOVE:C664(Invoices_CancelButton_i;$move_i;0)
		
		Fnd_Gen_ButtonText(->Invoices_CancelButton_i;Fnd_Loc_GetString("Loc_Invoices";"CancelButton");Align right:K42:4)
		
		OBJECT SET FORMAT:C236([Invoices:6]Subtotal:5;<>Gen_MoneyFormat_t)  // DB040829 - Added
		OBJECT SET FORMAT:C236([Invoices:6]Tax:6;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Invoices:6]Shipping:7;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Invoices:6]Total:8;<>Gen_MoneyFormat_t)
		
		START TRANSACTION:C239  // So we can undo changes to [Line Items] records.
		
		If (Is new record:C668(Current form table:C627->))
			// Unlike the other tables, we must assign an ID immediately for use by the line item records.
			Fnd_SqNo_SetRecordID
			
			[Invoices:6]Invoice Number:3:=Fnd_SqNo_Get("Invoice Number")  // Don't localize this.
			
			[Invoices:6]Invoice Date:4:=Current date:C33
			READ ONLY:C145([Company Info:8])
			ALL RECORDS:C47([Company Info:8])
			[Invoices:6]Terms:9:=[Company Info:8]Default Terms:8
			
			// If <>Invoices_FromContactID_i has a value, we should use it as the ID number
			//   of the associated contact.
			If (<>Invoices_FromContactID_i#0)
				[Invoices:6]Contact_ID:2:=<>Invoices_FromContactID_i
				<>Invoices_FromContactID_i:=0
			End if 
			
			<>Contacts_AddRecordNumber_i:=No current record:K29:2
		End if 
		
		//SET WINDOW TITLE("Invoice "+String([Invoices]Invoice Number;"|Invoices_InvoiceNumberFormat"))
		
		Case of 
			: (Fnd_Loc_LanguageCode="FR")
				LIST TO ARRAY:C288("Invoice Terms (FR)";Invoices_TermsPopup_at)
			Else 
				LIST TO ARRAY:C288("Invoice Terms (EN)";Invoices_TermsPopup_at)
		End case 
		Invoices_TermsPopup_at{0}:=[Invoices:6]Terms:9
		
		// Update the variable that displays the related [Contacts] record.
		Invoices_UpdateContactInfo
		Invoices_LoadRelatedLineItems
		
		Fnd_Menu_Window_Add
		
		
	: (Form event code:C388=On Outside Call:K2:11)
		// If the user clicked the New button to add a new contact, we'll get
		//   get an Outside Call when (if) the record gets saved.
		If (<>Contacts_AddRecordNumber_i>0)  // DB040522 - Changed from #0 to >0 to fix a bug.
			READ ONLY:C145([Contacts:4])
			GOTO RECORD:C242([Contacts:4];<>Contacts_AddRecordNumber_i)
			[Invoices:6]Contact_ID:2:=[Contacts:4]Contact_ID:1
			<>Contacts_AddRecordNumber_i:=0
		End if 
		// Update the variable that displays the related [Contacts] record.
		// It may have just been updated.
		Invoices_UpdateContactInfo
		
	: (Form event code:C388=On Validate:K2:3)
		VALIDATE TRANSACTION:C240
		
	: (Form event code:C388=On Unload:K2:2)
		If (Record number:C243(Current form table:C627->)=New record:K29:1)
			Fnd_SqNo_Put("Invoice Number";[Invoices:6]Invoice Number:3)
		End if 
		CANCEL TRANSACTION:C241
End case 

If (Record number:C243([Line Items:7])=No current record:K29:2)
	DISABLE BUTTON(->Invoices_DeleteLineItemButton_i)
Else 
	ENABLE BUTTON(->Invoices_DeleteLineItemButton_i)
End if 

Fnd_IO_InputFormMethod