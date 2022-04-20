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
	
	Fnd_Gen_CurrentTable(->[LineItems:7])
	Fnd_Out_Active(True:C214)
	
	
	$theFieldType_i:=Fnd_Out_fieldType(->[Contacts:4]Contact_ID:1)
	
	$theFieldType_i:=Fnd_Out_fieldType("invoice.contact.Contact_ID")
	
	////$tableNumber:=4
	
	//$e:=ds.LineItems.query("LineItem_ID = :1";17).first()
	//$i_e:=$e.invoice
	//$c_e:=$i_e.contact
	
	//$fName:=$c_e.FirstName  //.fieldType
	
	
	//$lName:=ds.LineItems.query("LineItem_ID = :1";17).first().invoice.contact.LastName
	//$attKind:=ds.LineItems.invoice.contact.firstName.fieldType
	//$Kind:=ds.LineItems.invoice.contact.firstName.type
	
	//$attKind2:=ds[ds[ds.LineItems.invoice.relatedDataClass].contact.relatedDataClass].Contact_ID.fieldType
	
	//$theFormula_t:="invoice.contact.Contact_ID"
	//$theDataClass_t:="LineItems"
	
	//$theChain_c:=Split string($theFormula_t;".";sk ignore empty strings)
	
	//$counter_i:=0
	//$numberOfItems_i:=$theChain_c.length-2
	
	//$theDataClass_t:=ds[$theDataClass_t][$theChain_c[0]].relatedDataClass
	
	//For ($currItem_i;1;$numberOfItems_i)
	//$theDataClass_t:=ds[$theDataClass_t][$theChain_c[$currItem_i]].relatedDataClass
	//End for 
	
	//$theAttribute_t:=$theChain_c[$numberOfItems_i+1]
	
	//$theFieldType_i:=ds[$theDataClass_t][$theAttribute_t].fieldType
	
	
	
	
	//For each ($relation_t;$theChain_c)
	
	
	//End for each
	
	
	//$kind:=ds.LineItems.invoice.contact  //.kind  //.FirstName.kind
	
	//$fieldNo:=Fnd_Out_getPrimaryKey($tableNumber)
	//$tableName:=Table name($tableNumber)
	
	//$tableNo:=4
	//$fieldNo:=0
	
	//Begin SQL
	//SELECT ucc.column_id
	//FROM _USER_CONS_COLUMNS ucc
	//INNER JOIN _USER_CONSTRAINTS uc on uc.CONSTRAINT_ID=ucc.CONSTRAINT_ID
	//WHERE uc.constraint_type='P' and ucc.table_id=:$tableNo
	//INTO :$fieldNo
	//End SQL
	
	
	//$pk:=ds.Contacts.getInfo().primaryKey
	
	//$fieldName:=ds[$tableName]  //.getInfo().primaryKey
	//$fieldNumber:=ds[tableName][fieldName].fieldNumber
	
	
	//$fieldName:=ds[$tableName].getInfo().primaryKey
	//$fieldNumber:=ds[tableName][fieldName].fieldNumber
	
	
	
Else 
	// This version allows for any number of processes
	// $ProcessID_i:=New Process(Current method name;$StackSize_i;$DesiredProcessName_t)
	
	// On the other hand, this version allows for one unique process
	$ProcessID_i:=New process:C317(Current method name:C684;$StackSize_i;$DesiredProcessName_t;*)
	
	RESUME PROCESS:C320($ProcessID_i)
	SHOW PROCESS:C325($ProcessID_i)
	BRING TO FRONT:C326($ProcessID_i)
End if 
