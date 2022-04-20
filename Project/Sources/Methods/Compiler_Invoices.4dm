//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Compiler_Invoices

// Compiler variables related to the Invoice handling routines.
// Just for use by the compiler.  Not called directly.

// Parameters: None

// Returns: Nothing

// Created by 4D, Inc. on May 2, 2003
// Modified by 4D, Inc. on Jun 27, 2003
//   Fixed a longint variable that was accidentally declared as a real.
// ----------------------------------------------------

// Variables

C_LONGINT:C283(INVOICES_ADDLINEITEMBUTTON_I)
C_LONGINT:C283(INVOICES_LOOKUPLINEITEMBUTTON_I)
C_LONGINT:C283(INVOICES_CLEARCONTACTBUTTON_I)
C_LONGINT:C283(INVOICES_DELETELINEITEMBUTTON_I)
C_LONGINT:C283(INVOICES_NEWCONTACTBUTTON_I)
C_LONGINT:C283(INVOICES_SELECTCONTACTBUTTON_I)
C_LONGINT:C283(INVOICES_VIEWCONTACTBUTTON_I)
C_LONGINT:C283(INVOICES_PRINTBUTTON_I)
C_LONGINT:C283(INVOICES_OKBUTTON_I)
C_LONGINT:C283(INVOICES_CANCELBUTTON_I)
C_LONGINT:C283(INVOICES_CALENDARBUTTON_I)
C_TEXT:C284(INVOICES_COMPANYINFO_T)
C_TEXT:C284(INVOICES_CONTACTINFO_T)
C_TEXT:C284(INVOICES_CONTACTNAME_T)

// Interprocess Variables
C_LONGINT:C283(<>INVOICES_FROMCONTACTID_I)  // 4D030627 - Changed from Real to Longint.
C_LONGINT:C283(<>Invoices_AtStartupCheckbox_i)

C_TEXT:C284(<>Invoices_NumberColumnLabel_t)
C_TEXT:C284(<>Invoices_DateColumnLabel_t)
C_TEXT:C284(<>Invoices_CustomerColumnLabel_t)
C_TEXT:C284(<>Invoices_NumberLabel_t)
C_TEXT:C284(<>Invoices_DateLabel_t)
C_TEXT:C284(<>Invoices_ContactLabel_t)
C_TEXT:C284(<>Invoices_TermsLabel_t)
C_TEXT:C284(<>Invoices_QuantityLabel_t)
C_TEXT:C284(<>Invoices_ProductNumberLabel_t)
C_TEXT:C284(<>Invoices_ListPriceLabel_t)
C_TEXT:C284(<>Invoices_SellPriceLabel_t)
C_TEXT:C284(<>Invoices_PrintTitle_t)
C_TEXT:C284(<>Invoices_PrintBillTo_t)
C_TEXT:C284(<>Invoices_PrintDate_t)
C_TEXT:C284(<>Invoices_PrintInvoiceNo_t)
C_TEXT:C284(<>Invoices_DescriptionLabel_t)
C_TEXT:C284(<>Invoices_ExtendedPriceLabel_t)
C_TEXT:C284(<>Invoices_SubtotalLabel_t)
C_TEXT:C284(<>Invoices_TaxLabel_t)
C_TEXT:C284(<>Invoices_ShippingLabel_t)
C_TEXT:C284(<>Invoices_TotalLabel_t)
C_TEXT:C284(<>Invoices_PrintTerms_t)

// Arrays
ARRAY TEXT:C222(INVOICES_CONTACTCOMPANIES_AT;0)
ARRAY TEXT:C222(INVOICES_CONTACTNAMES_AT;0)
ARRAY TEXT:C222(INVOICES_TERMSPOPUP_AT;0)

// Parameters
C_LONGINT:C283(Invoices_SelectContact;$0)

C_TEXT:C284(Invoices_GetContactInfo;$0)
