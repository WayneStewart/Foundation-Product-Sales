  // Object Method: FP.Form
  // ----------------------------------------------------


C_TEXT:C284($Text_t)

If (Form event code:C388=On Load:K2:1)
	OBJECT SET VISIBLE:C603(*;"Form";(Not:C34(Is compiled mode:C492) | (Shift down:C543)))
	
Else 
	If (Form:C1466#Null:C1517)
		$Text_t:=JSON Stringify:C1217(Form:C1466;*)
	Else 
		$Text_t:=JSON Stringify:C1217(New object:C1471)
	End if 
	SET TEXT TO PASTEBOARD:C523($Text_t)
	
End if 