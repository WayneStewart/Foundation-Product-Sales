  // Object Method: FP.storage
  // ----------------------------------------------------

C_TEXT:C284($Text_t)

If (Form event code:C388=On Load:K2:1)
	OBJECT SET VISIBLE:C603(*;"storage";(Not:C34(Is compiled mode:C492) | (Shift down:C543)))
	
Else 
	If (Storage:C1525#Null:C1517)
		$Text_t:=JSON Stringify:C1217(Storage:C1525;*)
	Else 
		$Text_t:=JSON Stringify:C1217(New object:C1471)
	End if 
	SET TEXT TO PASTEBOARD:C523($Text_t)
	
End if 