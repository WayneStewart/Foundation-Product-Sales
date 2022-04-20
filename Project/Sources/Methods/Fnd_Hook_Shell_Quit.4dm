//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_Shell_Quit --> Boolean

// Called when quitting the database, just before Foundation calls QUIT 4D.
// Return True to allow Foundation to quit the application normally.
// Return False to abort the quit.

// Method Type: Public

// Parameters: None

// Returns:
//   $0 : Boolean : Allow Foundation to quit?
// ----------------------------------------------------

C_BOOLEAN:C305($0)

// This is a good place to clear or reset any variables so they're fresh
//   when you relaunch the database during development without actually
//   quitting 4D.

$0:=True:C214  // Allow the application to quit.
