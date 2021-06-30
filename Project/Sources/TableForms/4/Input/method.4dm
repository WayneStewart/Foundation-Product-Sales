// ----------------------------------------------------

// Form Method: [Contacts].Input


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_LONGINT:C283($move_i;$move1_i;$move2_i;$move3_i)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Fnd_SqNo_SetRecordID
		
		// Align the fields.
		
		Fnd_Loc_FixLabelWidths(-><>Contacts_NameLabel_t;->[Contacts:4]First Name:2;-><>Contacts_CompanyLabel_t;->[Contacts:4]Company:4;-><>Contacts_AddressLabel_t;->[Contacts:4]Address:5;-><>Contacts_CountryLabel_t;->Contacts_CountryPopup_at;-><>Contacts_PhoneLabel_t;->[Contacts:4]Phone:10;-><>Contacts_EmailLabel_t;->[Contacts:4]Email Address:12;-><>Contacts_WebSiteLabel_t;->[Contacts:4]Web Site:13)
		
		// Move the "First Name" label back under the First Name field.
		
		OBJECT GET COORDINATES:C663([Contacts:4]Phone:10;$fieldLeft_i;$top_i;$right_i;$bottom_i)
		OBJECT GET COORDINATES:C663(*;"Contacts_FirstNameLabel";$left_i;$top_i;$right_i;$bottom_i)
		OBJECT MOVE:C664(*;"Contacts_FirstNameLabel";$fieldLeft_i;$top_i;$right_i;$bottom_i;*)
		
		// We need to manually move these Postal Code and City fields, and the labels.
		
		OBJECT GET COORDINATES:C663([Contacts:4]Address:5;$fieldLeft_i;$top_i;$right_i;$bottom_i)
		
		OBJECT GET COORDINATES:C663(*;"Contacts_USCityField";$left_i;$top_i;$right_i;$bottom_i)
		OBJECT MOVE:C664(*;"Contacts_USCityField";$fieldLeft_i;$top_i;$right_i;$bottom_i;*)
		OBJECT GET COORDINATES:C663(*;"Contacts_USCityLabel";$left_i;$top_i;$right_i;$bottom_i)
		OBJECT MOVE:C664(*;"Contacts_USCityLabel";$fieldLeft_i;$top_i;$right_i;$bottom_i;*)
		
		OBJECT GET COORDINATES:C663(*;"Contacts_OtherPostalField";$left_i;$top_i;$right_i;$bottom_i)
		OBJECT MOVE:C664(*;"Contacts_OtherPostalField";$fieldLeft_i;$top_i;$right_i;$bottom_i;*)
		OBJECT GET COORDINATES:C663(*;"Contacts_OtherPostalLabel";$left_i;$top_i;$right_i;$bottom_i)
		OBJECT MOVE:C664(*;"Contacts_OtherPostalLabel";$fieldLeft_i;$top_i;$right_i;$bottom_i;*)
		
		// Move the "Voice" label back under the Phone field.
		
		OBJECT GET COORDINATES:C663([Contacts:4]Phone:10;$fieldLeft_i;$top_i;$right_i;$bottom_i)
		OBJECT GET COORDINATES:C663(*;"Contacts_VoiceLabel";$left_i;$top_i;$right_i;$bottom_i)
		OBJECT MOVE:C664(*;"Contacts_VoiceLabel";$fieldLeft_i;$top_i;$right_i;$bottom_i;*)
		
		// Localize and resize the buttons.
		
		$move1_i:=Fnd_Gen_ButtonText(->Contacts_NewInvoiceButton_i;Fnd_Loc_GetString("Loc_Contacts";"NewButton");Align right:K42:4)
		$move2_i:=Fnd_Gen_ButtonText(->Contacts_ViewInvoiceButton_i;Fnd_Loc_GetString("Loc_Contacts";"ViewButton");Align right:K42:4)
		$move3_i:=Fnd_Gen_ButtonText(->Contacts_DeleteInvoiceButton_i;Fnd_Loc_GetString("Loc_Contacts";"DeleteButton");Align right:K42:4)
		
		// Now figure out how much we need to move the included list, and resize it.
		
		Case of 
			: (($move1_i<$move2_i) & ($move1_i<$move3_i))
				$move_i:=$move1_i
			: ($move2_i<$move3_i)
				$move_i:=$move2_i
			Else 
				$move_i:=$move3_i
		End case 
		OBJECT MOVE:C664(*;"Contact_InvoicesSubform";0;0;$move_i;0)
		
		Fnd_Loc_FixButtonWidths(->Contacts_NewInvoiceButton_i;->Contacts_ViewInvoiceButton_i;->Contacts_DeleteInvoiceButton_i)
		
		Case of 
			: (Fnd_Loc_LanguageCode="FR")
				LIST TO ARRAY:C288("Countries (FR)";Contacts_CountryPopup_at)
			Else 
				LIST TO ARRAY:C288("Countries (EN)";Contacts_CountryPopup_at)
		End case 
		Contacts_CountryPopup_at{0}:=[Contacts:4]Country:9
		
		Contacts_UpdateAddressFields
		Contacts_UpdateWindowTitle
		
		
	: (Form event code:C388=On Activate:K2:9)
		Contacts_LoadRelatedInvoices  // Sets the [Invoices] table to read-only. 
		
		
		
	: (Form event code:C388=On Validate:K2:3)
		<>Contacts_AddRecordNumber_i:=Record number:C243([Contacts:4])  // The [Invoices].Input form will check this.
		
End case 


// Disable the Email button if there is no email address.

If ([Contacts:4]Email Address:12="")
	DISABLE BUTTON(->Contacts_EmailButton_i)
Else 
	ENABLE BUTTON(->Contacts_EmailButton_i)
End if 

// Disable the Web button if there is no email address.

If ([Contacts:4]Web Site:13="")
	DISABLE BUTTON(->Contacts_WebButton_i)
Else 
	ENABLE BUTTON(->Contacts_WebButton_i)
End if 

If (Record number:C243([Invoices:6])=No current record:K29:2)
	DISABLE BUTTON(->Contacts_ViewInvoiceButton_i)
	DISABLE BUTTON(->Contacts_DeleteInvoiceButton_i)
Else 
	ENABLE BUTTON(->Contacts_ViewInvoiceButton_i)
	ENABLE BUTTON(->Contacts_DeleteInvoiceButton_i)
End if 

Fnd_IO_InputFormMethod