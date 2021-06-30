// ----------------------------------------------------

// Object Method: [Contacts].Input.Contacts_EmailButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_TEXT:C284($url)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		If ([Contacts:4]Email Address:12#"")
			$url:="mailto:"+[Contacts:4]Email Address:12
			OPEN URL:C673($url;*)
		End if 
End case 
