// ----------------------------------------------------

// Object Method: ([Company Info].Input.Company_WebButton_i


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		OPEN URL:C673([Company Info:8]Web Site:7;*)
End case 
