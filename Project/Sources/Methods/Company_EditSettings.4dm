//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: Company_EditSettings

// Displays the [Company Info] record for editing.
// By default, this application is designed to have just one
//   company record.  There's no reason this couldn't be changed
//   with a little work to support multiple companies.
// Launches itself in a new process.

// Parameters: None

// Returns: Nothing

// Created by 4D, Inc. on May 2, 2003
// ----------------------------------------------------

READ ONLY:C145([Company Info:8])  // We'll be editing the record in a new process.
ALL RECORDS:C47([Company Info:8])

// Notice the behavior of the window opened here is set in Fnd_aa_IO_DisplayRecord.
If (Records in selection:C76([Company Info:8])=0)
	Fnd_Rec_NewRecord(->[Company Info:8])
Else 
	Fnd_IO_DisplayRecord(->[Company Info:8];Record number:C243([Company Info:8]))
End if 
