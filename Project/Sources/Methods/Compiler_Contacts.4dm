//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: Compiler_Contacts

// Compiler variables related to the Contacts handling routines.
// Just for use by the compiler.  Not called directly.

// Parameters: None

// Returns: Nothing

// Created by 4D, Inc. on May 2, 2003
// Modified by 4D, Inc. on Jun 27, 2003
//   Removed two Company variable declarations that were already in the Compiler_Company method.
// ----------------------------------------------------

// Variables
C_LONGINT:C283(CONTACTS_DELETEINVOICEBUTTON_I)
C_LONGINT:C283(CONTACTS_EMAILBUTTON_I)
C_LONGINT:C283(CONTACTS_NEWINVOICEBUTTON_I)
C_LONGINT:C283(CONTACTS_VIEWINVOICEBUTTON_I)
C_LONGINT:C283(CONTACTS_WEBBUTTON_I)
C_TEXT:C284(CONTACTS_NAMEADDRESS_T)
C_TEXT:C284(CONTACTS_PHONEEMAIL_T)
C_TEXT:C284(CONTACTS_STATELABEL_T)
C_TEXT:C284(CONTACTS_POSTALCODELABEL_T)

// Interprocess Variables
C_LONGINT:C283(<>Contacts_AddRecordNumber_i)
C_LONGINT:C283(<>Contacts_AtStartupCheckbox_i)

C_TEXT:C284(<>Contacts_NameColumnLabel_t)
C_TEXT:C284(<>Contacts_NameLabel_t)
C_TEXT:C284(<>Contacts_FirstNameLabel_t)
C_TEXT:C284(<>Contacts_LastNameLabel_t)
C_TEXT:C284(<>Contacts_PhoneLabel_t)
C_TEXT:C284(<>Contacts_FaxLabel_t)
C_TEXT:C284(<>Contacts_CompanyLabel_t)
C_TEXT:C284(<>Contacts_AddressLabel_t)
C_TEXT:C284(<>Contacts_CountryLabel_t)
C_TEXT:C284(<>Contacts_VoiceLabel_t)
C_TEXT:C284(<>Contacts_EmailLabel_t)
C_TEXT:C284(<>Contacts_WebSiteLabel_t)

// Arrays
ARRAY TEXT:C222(CONTACTS_COUNTRYPOPUP_AT;0)
ARRAY POINTER:C280(Contacts_FindFields_aptr;0)

// Parameters
C_TEXT:C284(Contacts_FullName;$0)

C_TEXT:C284(Contacts_FullAddress;$0)
C_BOOLEAN:C305(Contacts_FullAddress;$1;$2)

C_BOOLEAN:C305(Contacts_IsUSA;$0)
C_TEXT:C284(Contacts_IsUSA;$1)
