//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_Shell_Startup

// Place any startup code here that you want to run while the startup
//   dialog is displayed.
// You can also call your startup stuff before or after Fnd_Shell_OnStartup
//   is called from the On Startup database method.

// Method Type: Public

// Parameters: None

// Returns: Nothing
// Modified by Dave Batton on Aug 29, 2004
//   Added some code to handle money formats.
// ----------------------------------------------------

C_TEXT:C284($testString_t;$decimal_t)

var $i;$delayUntilTicks_i : Integer

$testString_t:=String:C10(1.1)

Case of 
	: ($testString_t="1.1")
		// Use "." as the decimal separator and "," as a thousands separator.
		<>Gen_MoneyFormat_t:="##,###,###,###,##0.00"
		
	: ($testString_t="1,1")
		// Use "," as the decimal separator and "." as a thousands separator.
		<>Gen_MoneyFormat_t:="##.###.###.###.##0,00"
		
	Else 
		// Get the decimal separator and build the format on-the-fly.
		$decimal_t:=$testString_t[[2]]  // Ignore the thousands separator.
		<>Gen_MoneyFormat_t:="#############0"+$decimal_t+"00"
End case 

// You wouldn't do exactly this in a real database since $1 does not equal 1€.
//   This is just for the demo.
Case of 
	: (Fnd_Loc_LanguageCode="FR")
		<>Gen_MoneyFormat_t:=<>Gen_MoneyFormat_t+" €"
	: ($testString_t="1,1")
		<>Gen_MoneyFormat_t:="€"+<>Gen_MoneyFormat_t
	Else 
		<>Gen_MoneyFormat_t:="$"+<>Gen_MoneyFormat_t
End case 



Fnd_Shell_ExcludeFromQuit("AdminWorker")
For ($i;0;4)
	Fnd_Shell_ExcludeFromQuit("Spare Process "+String:C10($i))
End for 



// Create a localized colon string to use after field name labels & such.
<>Gen_Colon_t:=Fnd_Loc_GetString("Loc_General";"Colon")

// Load some other localization strings.
<>Company_NameLabel_t:=Fnd_Loc_GetString("Loc_Company";"NameLabel")
<>Company_AddressLabel_t:=Fnd_Loc_GetString("Loc_Company";"AddressLabel")
<>Company_PhoneLabel_t:=Fnd_Loc_GetString("Loc_Company";"PhoneLabel")
<>Company_VoiceLabel_t:=Fnd_Loc_GetString("Loc_Company";"VoiceLabel")
<>Company_FaxLabel_t:=Fnd_Loc_GetString("Loc_Company";"FaxLabel")
<>Company_EmailLabel_t:=Fnd_Loc_GetString("Loc_Company";"EmailLabel")
<>Company_WebSiteLabel_t:=Fnd_Loc_GetString("Loc_Company";"WebSiteLabel")
<>Company_InvoiceLabel_t:=Fnd_Loc_GetString("Loc_Company";"InvoicesLabel")
<>Company_TermsLabel_t:=Fnd_Loc_GetString("Loc_Company";"DefaultTermsLabel")

<>Contacts_NameColumnLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"NameColumnLabel")
<>Contacts_NameLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"NameLabel")
<>Contacts_FirstNameLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"FirstNameLabel")
<>Contacts_LastNameLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"LastNameLabel")
<>Contacts_CompanyLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"CompanyLabel")
<>Contacts_AddressLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"AddressLabel")
<>Contacts_CountryLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"CountryLabel")
<>Contacts_PhoneLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"PhoneLabel")
<>Contacts_VoiceLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"VoiceLabel")
<>Contacts_FaxLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"FaxLabel")
<>Contacts_EmailLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"EmailLabel")
<>Contacts_WebSiteLabel_t:=Fnd_Loc_GetString("Loc_Contacts";"WebSiteLabel")

<>Invoices_NumberColumnLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"NumberColumnLabel")
<>Invoices_DescriptionLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"DescriptionLabel")
<>Invoices_DateColumnLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"DateColumnLabel")
<>Invoices_CustomerColumnLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"CustomerColumnLabel")

<>Invoices_NumberLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"NumberLabel")
<>Invoices_DateLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"DateLabel")
<>Invoices_ContactLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"ContactLabel")
<>Invoices_TermsLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"TermsLabel")
<>Invoices_QuantityLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"QuantityLabel")
<>Invoices_ProductNumberLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"ProductNumberLabel")
<>Invoices_ListPriceLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"ListPriceLabel")
<>Invoices_ExtendedPriceLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"ExtendedPriceLabel")
<>Invoices_SellPriceLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"SellPriceLabel")
<>Invoices_PrintTitle_t:=Fnd_Loc_GetString("Loc_Invoices";"PrintTitle")
<>Invoices_PrintBillTo_t:=Fnd_Loc_GetString("Loc_Invoices";"PrintBillTo")
<>Invoices_PrintDate_t:=Fnd_Loc_GetString("Loc_Invoices";"PrintDate")
<>Invoices_PrintInvoiceNo_t:=Fnd_Loc_GetString("Loc_Invoices";"PrintInvoiceNo")
<>Invoices_PrintTerms_t:=Fnd_Loc_GetString("Loc_Invoices";"PrintTerms")
<>Invoices_SubtotalLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"SubtotalLabel")
<>Invoices_TaxLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"TaxLabel")
<>Invoices_ShippingLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"ShippingLabel")
<>Invoices_TotalLabel_t:=Fnd_Loc_GetString("Loc_Invoices";"TotalLabel")

<>Products_NumberColumnLabel_t:=Fnd_Loc_GetString("Loc_Products";"NumberColumnLabel")
<>Products_NumberLabel_t:=Fnd_Loc_GetString("Loc_Products";"NumberLabel")
<>Products_NameLabel_t:=Fnd_Loc_GetString("Loc_Products";"NameLabel")
<>Products_DescriptionLabel_t:=Fnd_Loc_GetString("Loc_Products";"DescriptionLabel")
<>Products_PriceLabel_t:=Fnd_Loc_GetString("Loc_Products";"PriceLabel")
<>Products_SelectNumberLabel_t:=Fnd_Loc_GetString("Loc_Products";"SelectNumberLabel")




If (Records in table:C83([Invoices:6])=0)
	Fnd_SqNo_Set("Invoice Number";1001)  // Start invoices at this number. Don't localize this.
End if 

If (Fnd_Pref_GetBoolean("Display Contacts at Startup";True:C214))
	Fnd_IO_DisplayTable(->[Contacts:4])  // Display the Contacts table window.
End if 

If (Fnd_Pref_GetBoolean("Display Invoices at Startup";True:C214))
	Fnd_IO_DisplayTable(->[Invoices:6])  // Just for this demo.
End if 

//If there's no [Company Info] record, display the edit window so the user
//   can create a record.
If (Records in table:C83([Company Info:8])=0)
	// Delay for one second first, so this window will open up in front of the Contacts window.
	$delayUntilTicks_i:=Tickcount:C458+60  // 60 ticks = 1 second
	Repeat 
		IDLE:C311  // Can't use DELAY PROCESS since we're probably be in the User/Custom Menus process.
	Until (Tickcount:C458>$delayUntilTicks_i)
	Company_EditSettings
End if 
