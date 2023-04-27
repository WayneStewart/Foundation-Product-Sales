Class extends Entity

Function fullName()->$result : Text
	$result:=This:C1470.FirstName+" "+This:C1470.LastName
	
Function reversedFullName->$result : Text
	$result:=This:C1470.LastName+", "+This:C1470.FirstName