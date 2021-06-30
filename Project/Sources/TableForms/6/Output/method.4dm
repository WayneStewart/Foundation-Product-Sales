// ----------------------------------------------------

// Form Method: [Invoices].Output


// Created by 4D, Inc. on May 2, 2003

// Modified by 4D, Inc. on Jun 27, 2003

//   Now the records are sorted when the window is first displayed.

// Modified by Dave Batton on Aug 29, 2004

//   Money formats are now handled procedurally.

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Load:K2:1)
		OBJECT SET FORMAT:C236([Invoices:6]Total:8;<>Gen_MoneyFormat_t)  // DB040829 - Added
			
		ORDER BY:C49([Invoices:6];[Invoices:6]Invoice Number:3;>)  // 4D030627 - Added
			
		
	: (Form event code:C388=On Display Detail:K2:22)
		[Contacts:4]Last Name:3:=Invoices_GetContactInfo
End case 

Fnd_IO_OutputFormMethod