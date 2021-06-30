// ----------------------------------------------------

// Form Method: [Contacts].Output


// Created by 4D, Inc. on May 2, 2003

// Modified by 4D, Inc. on Jun 27, 2003

//   Now the records are sorted when the window is first displayed.

// Modified by Dave Batton on Jun 7, 2004

//   Added calls to Fnd_Loc_GetString for localilzation.

// Modified by Dave Batton on Sep 20, 2004

//   Fixed a bug in the localization code. Was looking for the wrong module name.

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Load:K2:1)
		ORDER BY:C49([Contacts:4];[Contacts:4]Last Name:3;>;[Contacts:4]First Name:2;>)  // 4D030627 - Added
			
		
	: (Form event code:C388=On Display Detail:K2:22)
		If (([Contacts:4]First Name:2="") & ([Contacts:4]Last Name:3="") & ([Contacts:4]Company:4=""))
			[Contacts:4]Last Name:3:=Fnd_Loc_GetString("Loc_Contacts";"NoNameOrCompany")  // DB040920 - Fixed.
				
		Else 
			[Contacts:4]Last Name:3:=Contacts_FullName
		End if 
End case 

Fnd_IO_OutputFormMethod
