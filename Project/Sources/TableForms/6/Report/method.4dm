// ----------------------------------------------------
// Form Method: [Invoices].Report

// Created by 4D, Inc. on May 2, 2003
// Modified by Dave Batton on Aug 29, 2004
//   Money formats are now handled procedurally.
// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Printing Detail:K2:18)
		OBJECT SET FORMAT:C236([Invoices:6]Subtotal:5;<>Gen_MoneyFormat_t)  // DB040829 - Added
		OBJECT SET FORMAT:C236([Invoices:6]Total:8;<>Gen_MoneyFormat_t)  // DB040829 - Added
End case 
