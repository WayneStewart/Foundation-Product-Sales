//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Compiler_Methods

// Compiler declarations for the Application Methods.

// Access Type: Private

// Parameters: None

// Returns:
// Nothing

// Created by Walt Nelson on 1/22/11
// ----------------------------------------------------


C_TEXT:C284(Contacts_FullAddress; $0)
C_BOOLEAN:C305(Contacts_FullAddress; $1)
C_BOOLEAN:C305(Contacts_FullAddress; $2)
C_TEXT:C284(Contacts_FullName; $0)
C_TEXT:C284(Invoices_GetContactInfo; $0)
C_LONGINT:C283(Invoices_SelectContact; $0)
C_LONGINT:C283(LineItems_SelectProduct; $0)
C_BOOLEAN:C305(Contacts_IsUSA; $0)
C_TEXT:C284(Contacts_IsUSA; $1)

C_VARIANT:C1683(DISABLE BUTTON; $1)
C_VARIANT:C1683(ENABLE BUTTON; $1)



//Fnd_Hook_IO_InputFormButton
C_BOOLEAN:C305(Fnd_Hook_IO_InputFormButton; $0)
C_TEXT:C284(Fnd_Hook_IO_InputFormButton; $1)

//Fnd_Hook_Rec_Delete
C_BOOLEAN:C305(Fnd_Hook_Rec_Delete; $0)

//Fnd_Hook_Rec_New
C_BOOLEAN:C305(Fnd_Hook_Rec_New; $0)
C_POINTER:C301(Fnd_Hook_Rec_New; $1)

//Fnd_Hook_Shell_Quit
C_BOOLEAN:C305(Fnd_Hook_Shell_Quit; $0)

//Fnd_Hook_SqNo_SetIDField
C_POINTER:C301(Fnd_Hook_SqNo_SetIDField; $0)
C_POINTER:C301(Fnd_Hook_SqNo_SetIDField; $1)

//Fnd_Host_GetFormProperties
C_POINTER:C301(Fnd_Host_GetFormProperties; $1)
C_TEXT:C284(Fnd_Host_GetFormProperties; $2)
C_POINTER:C301(Fnd_Host_GetFormProperties; $3)
C_POINTER:C301(Fnd_Host_GetFormProperties; $4)

//Fnd_Host_GetPictureFromLibrary
C_TEXT:C284(Fnd_Host_GetPictureFromLibrary; $1)
C_POINTER:C301(Fnd_Host_GetPictureFromLibrary; $2)

//Fnd_Host_ExecuteFormula
C_TEXT:C284(Fnd_Host_ExecuteFormula; $1)
C_POINTER:C301(Fnd_Host_ExecuteFormula; $2)

//Fnd_Host_ListToArray
C_TEXT:C284(Fnd_Host_ListToArray; $1)
C_POINTER:C301(Fnd_Host_ListToArray; $2)

//Fnd_Host_GetIntegerValue
C_LONGINT:C283(Fnd_Host_GetIntegerValue; $0)
C_TEXT:C284(Fnd_Host_GetIntegerValue; $1)

//Fnd_Host_ArrayToList
C_POINTER:C301(Fnd_Host_ArrayToList; $1)
C_TEXT:C284(Fnd_Host_ArrayToList; $2)

//Fnd_Host_Tlbr_SetBtnPict
C_LONGINT:C283(Fnd_Host_Tlbr_SetBtnPict; $1)
C_PICTURE:C286(Fnd_Host_Tlbr_SetBtnPict; $2)

//Fnd_Host_Tlbr_SetMessage
C_TEXT:C284(Fnd_Host_Tlbr_SetMessage; $1)

//Fnd_Host_Tlbr_ButtonClck
C_POINTER:C301(Fnd_Host_Tlbr_ButtonClck; $1)

//Fnd_Host_IO_DisplayDialog
C_TEXT:C284(Fnd_Host_IO_DisplayDialog; $1)
C_OBJECT:C1216(Fnd_Host_IO_DisplayDialog; $2)
C_BOOLEAN:C305(Fnd_Host_IO_DisplayDialog; $3)

//Fnd_Host_SaveList
C_TEXT:C284(Fnd_Host_SaveList; $1)
C_BLOB:C604(Fnd_Host_SaveList; $2)



//contactName
C_TEXT:C284(contactName; $0)