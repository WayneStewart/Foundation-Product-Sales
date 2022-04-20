// Object Method: FP.process
// ----------------------------------------------------

C_TEXT:C284($Text_t)
C_OBJECT:C1216($fnd)

If (Form event code:C388=On Load:K2:1)
	OBJECT SET VISIBLE:C603(*;"process";(Not:C34(Is compiled mode:C492) | (Shift down:C543)))
	
Else 
	$fnd:=Fnd_Shell_GetFndObject
	If ($fnd#Null:C1517)
		$Text_t:=JSON Stringify:C1217($fnd;*)
	Else 
		$Text_t:=JSON Stringify:C1217(New object:C1471)
	End if 
	SET TEXT TO PASTEBOARD:C523($Text_t)
	
End if 

