// ----------------------------------------------------

// Form Method: [Line Items].Included


// Created by 4D, Inc. on May 2, 2003

// Modified by Dave Batton on Aug 29, 2004

//   Money formats are now handled procedurally.

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Display Detail:K2:22)
		LineItems_ProductNumber_t:=[Products:5]Product Number:2
		LineItems_Extended_r:=[Line Items:7]Quantity:4*[Line Items:7]Sell Price:6
		
		OBJECT SET FORMAT:C236([Line Items:7]List Price:5;<>Gen_MoneyFormat_t)  // DB040829 - Added
			
		OBJECT SET FORMAT:C236([Line Items:7]Sell Price:6;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Line Items:7]Extended:7;<>Gen_MoneyFormat_t)
End case 
