// ----------------------------------------------------
// Form Method: [Line Items];"InvoiceIncluded"

// Created by Dave Batton on Aug 29, 2004
// ----------------------------------------------------

Case of 
	: (Form event code:C388=On Printing Detail:K2:18)
		OBJECT SET FORMAT:C236([Line Items:7]List Price:5;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Line Items:7]Sell Price:6;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Line Items:7]Extended:7;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Invoices:6]Subtotal:5;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Invoices:6]Tax:6;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Invoices:6]Shipping:7;<>Gen_MoneyFormat_t)
		OBJECT SET FORMAT:C236([Invoices:6]Total:8;<>Gen_MoneyFormat_t)
		
End case 
