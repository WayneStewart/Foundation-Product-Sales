//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_Shell_Setup

// Here's where the developer sets up information about this particular database.

// Method Type: Public

// Parameters: None

// Returns: Nothing
// ----------------------------------------------------

// Define the information displayed in the About box and Startup dialog.
Fnd_Gen_SetDatabaseInfo("DatabaseName";Fnd_Loc_GetString("Loc_General";"DatabaseName"))
Fnd_Gen_SetDatabaseInfo("DatabaseVersion";Fnd_Loc_GetString("Loc_General";"DatabaseVersion"))
Fnd_Gen_SetDatabaseInfo("DatabaseCopyright";Fnd_Loc_GetString("Loc_General";"DatabaseCopyright"))
Fnd_Gen_SetDatabaseInfo("DatabaseURL";Fnd_Loc_GetString("Loc_General";"DatabaseURL"))
