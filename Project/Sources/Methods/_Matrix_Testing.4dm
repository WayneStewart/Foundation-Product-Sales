//%attributes = {}
// _Matrix_Testing
// Created by Wayne Stewart (2022-04-24T14:00:00Z)
//  Method is an autostart type
//     wayne@4dsupport.guru
// ----------------------------------------------------

var $ProcessID_i;$StackSize_i;$WindowID_i : Integer
var $Form_t;$DesiredProcessName_t : Text
var $Form_o : Object
var $nil_ptr : Pointer

// ----------------------------------------------------

$StackSize_i:=0
$Form_t:="_Matrix_Testing"
$DesiredProcessName_t:="$"+$Form_t

If (Current process name:C1392=$DesiredProcessName_t)
	$Form_o:=New object:C1471()
	
	Fnd_Wnd_CloseBox(True:C214)
	Fnd_Wnd_Title("window title")
	Fnd_Wnd_Type(Plain form window:K39:10)
	Fnd_Wnd_Position(Fnd_Wnd_OnTheLeft)
	
	$WindowID_i:=Fnd_Wnd_OpenFormWindow($nil_ptr;$Form_t)
	//$WindowID_i:=Open form window($Form_t;Plain form window;On the left;At the bottom)
	DIALOG:C40($Form_t;$Form_o)
	CLOSE WINDOW:C154
	
	
	
Else 
	// This version allows for any number of processes
	// $ProcessID_i:=New Process(Current method name;$StackSize_i;$DesiredProcessName_t)
	
	// On the other hand, this version allows for one unique process
	$ProcessID_i:=New process:C317(Current method name:C684;$StackSize_i;$DesiredProcessName_t;*)
	
	RESUME PROCESS:C320($ProcessID_i)
	SHOW PROCESS:C325($ProcessID_i)
	BRING TO FRONT:C326($ProcessID_i)
End if 
