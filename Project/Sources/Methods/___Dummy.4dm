//%attributes = {"invisible":true,"shared":true}
// ___Dummy
// Created by Wayne Stewart (11/8/2026)
//  Method is an autostart type
//     waynestewart@mac.com
// ----------------------------------------------------

var $ProcessID_i; $StackSize_i; $WindowID_i : Integer
var $Form_t; $DesiredProcessName_t : Text

// ----------------------------------------------------

$StackSize_i:=0
$Form_t:=""
$DesiredProcessName_t:=Current method name:C684

If (Current process name:C1392=$DesiredProcessName_t)
	RELOAD PROJECT:C1739
	DELAY PROCESS:C323(Current process:C322; 30)
	
	Fnd_Test_Variadics
	
	ALERT:C41("Done")
	
Else 
	// This version allows for any number of processes
	// $ProcessID_i:=New Process(Current method name;$StackSize_i;$DesiredProcessName_t)
	
	// On the other hand, this version allows for one unique process
	$ProcessID_i:=New process:C317(Current method name:C684; $StackSize_i; $DesiredProcessName_t; *)
	
	RESUME PROCESS:C320($ProcessID_i)
	SHOW PROCESS:C325($ProcessID_i)
	BRING TO FRONT:C326($ProcessID_i)
End if 
