// ----------------------------------------------------

// Form Method: [Invoices].SelectContact


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


// We don't check for an event here because we want this test done

//   regardless of the event.

If (Invoices_ContactNames_at=0)
	DISABLE BUTTON(->Invoices_OKButton_i)
Else 
	ENABLE BUTTON(->Invoices_OKButton_i)
End if 
