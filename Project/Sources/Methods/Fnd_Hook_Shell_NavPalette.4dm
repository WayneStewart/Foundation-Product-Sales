//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_Shell_NavPalette

// This hook is called each time the Navigation Palette command is
//   selected from the Tools menu.

// Method Type: Public

// Parameters: None

// Returns: Nothing
// ----------------------------------------------------

// Specify the buttons to display on the Navigation Palette.
// Or do nothing, and Foundation will display the visible tables.

Fnd_Nav_AddButtonTable(->[Contacts:4];"";Foreground color:K23:1;0x00C6D4FC)
Fnd_Nav_AddButtonTable(->[Invoices:6];"";Foreground color:K23:1;0x00C6D4FC)
Fnd_Nav_AddButtonTable(->[Products:5];"";Foreground color:K23:1;0x00C6D4FC)

Fnd_Nav_AddButtonMethod("Fnd_IO_DisplayRecord(->[Invoices];-3)";Fnd_Loc_GetString("Loc_General";"NewSaleButton");Foreground color:K23:1;0x00E2FFDF)

Fnd_Nav_Display
