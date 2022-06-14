//%attributes = {"shared":true}
// aaa_Test
// Created by Wayne Stewart (2022-04-18T14:00:00Z)
//  Method is an autostart type
//     wayne@4dsupport.guru
// ----------------------------------------------------

C_LONGINT:C283($ProcessID_i;$StackSize_i;$WindowID_i)
C_TEXT:C284($Form_t;$DesiredProcessName_t)

Fnd_Hook_IO_DisplayTable

// ----------------------------------------------------

$StackSize_i:=0
$Form_t:=""
$DesiredProcessName_t:=Current method name:C684

If (Current process name:C1392=$DesiredProcessName_t)
	
	Alert2("At the top "+String:C10(At the top:K39:5)+Char:C90(13)\
		+"At the bottom "+String:C10(At the bottom:K39:6)+Char:C90(13)\
		+"On the right "+String:C10(On the right:K39:3)+Char:C90(13)\
		+"On the left "+String:C10(On the left:K39:2)+Char:C90(13))
	
Else 
	// This version allows for any number of processes
	// $ProcessID_i:=New Process(Current method name;$StackSize_i;$DesiredProcessName_t)
	
	// On the other hand, this version allows for one unique process
	$ProcessID_i:=New process:C317(Current method name:C684;$StackSize_i;$DesiredProcessName_t;*)
	
	RESUME PROCESS:C320($ProcessID_i)
	SHOW PROCESS:C325($ProcessID_i)
	BRING TO FRONT:C326($ProcessID_i)
End if 
