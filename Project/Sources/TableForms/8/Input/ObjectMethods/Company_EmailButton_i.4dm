// ----------------------------------------------------

// Object Method: [Company Info].Input.Company_EmailButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


C_TEXT:C284($url)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		If ([Company Info:8]Email Address:6#"")
			$url:="mailto:"+[Company Info:8]Email Address:6
			OPEN URL:C673($url;*)
		End if 
End case 
