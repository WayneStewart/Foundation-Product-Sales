//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------

// Project Method: Contacts_LoadRelatedInvoices


// Loads and sorts all of the related records for the current [Contacts] record.

// The [Invoices] table is set to READ ONLY first.


// Parameters: None


// Returns: Nothing


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


READ ONLY:C145([Invoices:6])
QUERY:C277([Invoices:6];[Invoices:6]Contact_ID:2=[Contacts:4]Contact_ID:1)
ORDER BY:C49([Invoices:6];[Invoices:6]Invoice Number:3;>)

// Move the current record pointer to none of the current records.
//   We do this because 4D will display the list with nothing highlighted, even
//   though there's a current record.  This means our buttons won't be properly
//   disabled or enabled.  This fixes this interface problem.

FIRST RECORD:C50([Invoices:6])
PREVIOUS RECORD:C110([Invoices:6])