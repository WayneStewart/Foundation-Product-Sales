//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------

// Project Method: Invoices_LoadRelatedLineItems


// Loads and sorts all of the related records for the current [Contacts] record.


// Parameters: None


// Returns: Nothing


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


QUERY:C277([Line Items:7];[Line Items:7]Invoice_ID:2=[Invoices:6]Invoice_ID:1)
ORDER BY:C49([Line Items:7];[Line Items:7]LineItem_ID:1;>)

// Move the current record pointer to none of the current records.

//   We do this because 4D will display the list with nothing highlighted, even

//   though there's a current record.  This means our buttons won't be properly

//   disabled or enabled.  This fixes this interface problem.

FIRST RECORD:C50([Line Items:7])
PREVIOUS RECORD:C110([Line Items:7])