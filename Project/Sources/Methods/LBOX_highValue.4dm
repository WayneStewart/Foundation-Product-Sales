//%attributes = {"invisible":true,"shared":true}

// LISTBOX SET PROPERTY(*; "Fnd_Out_ListBox";lk meta expression;"LBOX_highValue")

If (This:C1470.Total>500) | (This:C1470.ListPrice>500)
	
	
	$0:=New object:C1471(\
		"fontStyle"; "bold"; \
		"fontWeight"; "bold"; \
		"textDecoration"; "normal")
Else 
	//$0:=New object(\
		"fontStyle"; "normal"; \
		"fontWeight"; "normal"; \
		"textDecoration"; "normal")
End if 


