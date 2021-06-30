// ----------------------------------------------------

// Form Method: [Invoices].Invoice


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Load:K2:1)
		READ ONLY:C145([Company Info:8])
		ALL RECORDS:C47([Company Info:8])
		Invoices_CompanyInfo_t:=[Company Info:8]Company Name:2+Char:C90(Carriage return:K15:38)
		Invoices_CompanyInfo_t:=Invoices_CompanyInfo_t+[Company Info:8]Address:3+Char:C90(Carriage return:K15:38)
		Invoices_CompanyInfo_t:=Invoices_CompanyInfo_t+[Company Info:8]Phone:4
		
		Invoices_ContactInfo_t:=Contacts_FullAddress(True:C214;True:C214)
End case 
