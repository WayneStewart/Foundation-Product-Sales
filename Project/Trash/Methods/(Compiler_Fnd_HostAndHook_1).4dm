//%attributes = {"invisible":true,"shared":true}
// ----------------------------------------------------
// Project Method: Compiler_Fnd_HostAndHook

// Compiler method for the Fnd_Host and Fnd_Hook methods

// Access: Private

// Parameters: None

// Returns: Nothing

// ----------------------------------------------------


C_BOOLEAN:C305(Fnd_Host_Initialised_b)

If (Not:C34(Fnd_Host_Initialised_b))
	C_LONGINT:C283(Fnd_Host_IntegerValue_t)
	
	C_LONGINT:C283(Fnd_IO_OKButton_i;Fnd_IO_CancelButton_i)
	C_LONGINT:C283(Fnd_IO_CloseButton_i;Fnd_IO_EscButton_i)
	C_LONGINT:C283(Fnd_IO_FirstButton_i;Fnd_IO_PrevButton_i;Fnd_IO_NextButton_i;Fnd_IO_LastButton_i)
	
	C_LONGINT:C283(Fnd_Tlbr_OffscreenButton_i)
	
	C_LONGINT:C283(Fnd_Tlbr_PictureButton1_i;Fnd_Tlbr_PictureButton2_i;Fnd_Tlbr_PictureButton3_i;Fnd_Tlbr_PictureButton4_i;Fnd_Tlbr_PictureButton5_i)
	C_LONGINT:C283(Fnd_Tlbr_PictureButton6_i;Fnd_Tlbr_PictureButton7_i;Fnd_Tlbr_PictureButton8_i;Fnd_Tlbr_PictureButton9_i;Fnd_Tlbr_PictureButton10_i)
	C_LONGINT:C283(Fnd_Tlbr_PictureButton11_i;Fnd_Tlbr_PictureButton12_i;Fnd_Tlbr_PictureButton13_i;Fnd_Tlbr_PictureButton14_i;Fnd_Tlbr_PictureButton15_i)
	C_LONGINT:C283(Fnd_Tlbr_PictureButton16_i;Fnd_Tlbr_PictureButton17_i;Fnd_Tlbr_PictureButton18_i;Fnd_Tlbr_PictureButton19_i;Fnd_Tlbr_PictureButton20_i)
	
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_A;Fnd_Tlbr_Shortcut_B;Fnd_Tlbr_Shortcut_C;Fnd_Tlbr_Shortcut_D;Fnd_Tlbr_Shortcut_E)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_F;Fnd_Tlbr_Shortcut_G;Fnd_Tlbr_Shortcut_H;Fnd_Tlbr_Shortcut_I;Fnd_Tlbr_Shortcut_J)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_K;Fnd_Tlbr_Shortcut_L;Fnd_Tlbr_Shortcut_M;Fnd_Tlbr_Shortcut_N;Fnd_Tlbr_Shortcut_O)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_P;Fnd_Tlbr_Shortcut_Q;Fnd_Tlbr_Shortcut_R;Fnd_Tlbr_Shortcut_S;Fnd_Tlbr_Shortcut_T)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_U;Fnd_Tlbr_Shortcut_V;Fnd_Tlbr_Shortcut_W;Fnd_Tlbr_Shortcut_X;Fnd_Tlbr_Shortcut_Y)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_Z;Fnd_Tlbr_Shortcut_1;Fnd_Tlbr_Shortcut_2;Fnd_Tlbr_Shortcut_3;Fnd_Tlbr_Shortcut_4)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_5;Fnd_Tlbr_Shortcut_6;Fnd_Tlbr_Shortcut_7;Fnd_Tlbr_Shortcut_8;Fnd_Tlbr_Shortcut_9)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_0;Fnd_Tlbr_Shortcut_Esc;Fnd_Tlbr_Shortcut_Period;Fnd_Tlbr_Shortcut_Enter;Fnd_Tlbr_Shortcut_Backspace)
	C_LONGINT:C283(Fnd_Tlbr_Shortcut_Del;Fnd_Tlbr_Shortcut_Up;Fnd_Tlbr_Shortcut_Down;Fnd_Tlbr_Shortcut_Left;Fnd_Tlbr_Shortcut_Right)
	
	C_LONGINT:C283(Fnd_Tlbr_InvisibleButton1_i;Fnd_Tlbr_InvisibleButton2_i;Fnd_Tlbr_InvisibleButton3_i;Fnd_Tlbr_InvisibleButton4_i;Fnd_Tlbr_InvisibleButton5_i)
	C_LONGINT:C283(Fnd_Tlbr_InvisibleButton6_i;Fnd_Tlbr_InvisibleButton7_i;Fnd_Tlbr_InvisibleButton8_i;Fnd_Tlbr_InvisibleButton9_i;Fnd_Tlbr_InvisibleButton10_i)
	C_LONGINT:C283(Fnd_Tlbr_InvisibleButton11_i;Fnd_Tlbr_InvisibleButton12_i;Fnd_Tlbr_InvisibleButton13_i;Fnd_Tlbr_InvisibleButton14_i;Fnd_Tlbr_InvisibleButton15_i)
	C_LONGINT:C283(Fnd_Tlbr_InvisibleButton16_i;Fnd_Tlbr_InvisibleButton17_i;Fnd_Tlbr_InvisibleButton18_i;Fnd_Tlbr_InvisibleButton19_i;Fnd_Tlbr_InvisibleButton20_i)
	
	C_PICTURE:C286(Fnd_Tlbr_ButtonImage1_pic;Fnd_Tlbr_ButtonImage2_pic;Fnd_Tlbr_ButtonImage3_pic;Fnd_Tlbr_ButtonImage4_pic;Fnd_Tlbr_ButtonImage5_pic)
	C_PICTURE:C286(Fnd_Tlbr_ButtonImage6_pic;Fnd_Tlbr_ButtonImage7_pic;Fnd_Tlbr_ButtonImage8_pic;Fnd_Tlbr_ButtonImage9_pic;Fnd_Tlbr_ButtonImage10_pic)
	C_PICTURE:C286(Fnd_Tlbr_ButtonImage11_pic;Fnd_Tlbr_ButtonImage12_pic;Fnd_Tlbr_ButtonImage13_pic;Fnd_Tlbr_ButtonImage14_pic;Fnd_Tlbr_ButtonImage15_pic)
	C_PICTURE:C286(Fnd_Tlbr_ButtonImage16_pic;Fnd_Tlbr_ButtonImage17_pic;Fnd_Tlbr_ButtonImage18_pic;Fnd_Tlbr_ButtonImage19_pic;Fnd_Tlbr_ButtonImage20_pic)
	
	C_TEXT:C284(Fnd_Tlbr_Info_t)
	C_POINTER:C301(Fnd_Tlbr_HostInfoVar_ptr)
	
	
	Fnd_Host_Initialised_b:=True:C214
End if 


If (False:C215)
	C_BOOLEAN:C305(Fnd_Hook_IO_InputFormButton;$0)
	C_TEXT:C284(Fnd_Hook_IO_InputFormButton;$1)
	
	C_BOOLEAN:C305(Fnd_Hook_Rec_Delete;$0)
	
	C_BOOLEAN:C305(Fnd_Hook_Rec_New;$0)
	C_POINTER:C301(Fnd_Hook_Rec_New;$1)
	
	C_BOOLEAN:C305(Fnd_Hook_Shell_Quit;$0)
	
	C_POINTER:C301(Fnd_Hook_SqNo_SetIDField;$0;$1)
	
	C_POINTER:C301(Fnd_Host_ArrayToList;$1)
	C_TEXT:C284(Fnd_Host_ArrayToList;$2)
	
	C_TEXT:C284(Fnd_Host_ExecuteFormula;$1)
	C_POINTER:C301(Fnd_Host_ExecuteFormula;$2)
	
	C_POINTER:C301(Fnd_Host_GetFormProperties;$1;$3;$4)
	C_TEXT:C284(Fnd_Host_GetFormProperties;$2)
	
	C_LONGINT:C283(Fnd_Host_GetIntegerValue;$0)
	C_TEXT:C284(Fnd_Host_GetIntegerValue;$1)
	
	C_TEXT:C284(Fnd_Host_GetPictureFromLibrary;$1)
	C_POINTER:C301(Fnd_Host_GetPictureFromLibrary;$2)
	
	C_TEXT:C284(Fnd_Host_IO_DisplayDialog;$1)
	
	C_TEXT:C284(Fnd_Host_ListToArray;$1)
	C_POINTER:C301(Fnd_Host_ListToArray;$2)
	
	C_TEXT:C284(Fnd_Host_SaveList;$1)
	C_BLOB:C604(Fnd_Host_SaveList;$2)
	
	C_POINTER:C301(Fnd_Host_Tlbr_ButtonClck;$1)
	
	C_LONGINT:C283(Fnd_Host_Tlbr_SetBtnPict;$1)
	C_PICTURE:C286(Fnd_Host_Tlbr_SetBtnPict;$2)
	
	C_TEXT:C284(Fnd_Host_Tlbr_SetMessage;$1)
	
	
	
End if 