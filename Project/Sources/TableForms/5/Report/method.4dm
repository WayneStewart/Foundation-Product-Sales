// ----------------------------------------------------

// Form Method: Report


// Created by Dave Batton on Aug 29, 2004

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Load:K2:1)
		OBJECT SET FORMAT:C236([Products:5]List Price:5;<>Gen_MoneyFormat_t)
End case 
