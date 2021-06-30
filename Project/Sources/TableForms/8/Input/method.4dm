// ----------------------------------------------------

// Form Method: [Company Info].Input


// Created by 4D, Inc. on May 2, 2003

// Modified by Dave Batton on Jun 8, 2004

//   Added localization code.

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Load:K2:1)
		Case of 
			: (Fnd_Loc_LanguageCode="FR")
				LIST TO ARRAY:C288("Invoice Terms (FR)";Company_TermsPopup_at)
			Else 
				LIST TO ARRAY:C288("Invoice Terms (EN)";Company_TermsPopup_at)
		End case 
		
		
		Fnd_Loc_FixLabelWidths(-><>Company_NameLabel_t;->[Company Info:8]Company Name:2;-><>Company_AddressLabel_t;->[Company Info:8]Address:3;-><>Company_PhoneLabel_t;->[Company Info:8]Phone:4;-><>Company_EmailLabel_t;->[Company Info:8]Email Address:6;-><>Company_WebSiteLabel_t;->[Company Info:8]Web Site:7)
		
		// Move the "Voice" label back under the Phone field.
			
		OBJECT GET COORDINATES:C663([Company Info:8]Phone:4;$fieldLeft_i;$top_i;$right_i;$bottom_i)
		OBJECT GET COORDINATES:C663(*;"Company_VoiceLabel";$left_i;$top_i;$right_i;$bottom_i)
		OBJECT MOVE:C664(*;"Company_VoiceLabel";$fieldLeft_i;$top_i;$right_i;$bottom_i;*)
		
		Fnd_Loc_FixLabelWidths(-><>Company_TermsLabel_t;->Company_TermsPopup_at)
		
		If (Is new record:C668(Current form table:C627->))
			Fnd_SqNo_SetRecordID
			[Company Info:8]Company Name:2:=Fnd_Loc_GetString("Loc_Company";"YourCompanyNameHere")
			If (Size of array:C274(Company_TermsPopup_at)>=1)
				[Company Info:8]Default Terms:8:=Company_TermsPopup_at{1}
			End if 
		End if 
		
		Company_TermsPopup_at{0}:=[Company Info:8]Default Terms:8
End case 

Fnd_IO_InputFormMethod