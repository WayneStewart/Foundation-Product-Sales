//%attributes = {"shared":true}
// ----------------------------------------------------
// Project Method: Fnd_Hook_Shell_QueryEditor

// Go to Product Sales example or Starter database to copy the example for this method
// This method was automatically generated by Foundation 5 on Feb 18, 2010.
// ----------------------------------------------------
Case of 
	: (Macintosh option down:C545)  // Also works for the Windows' Alt key.
		Fnd_Find_Display
		
	: (Fnd_Gen_CurrentTable=(->[Contacts:4]))
		// do something special for the [Contacts] table
		
		// check for alternative query routines
		//: (Fnd_Gen_ComponentInfo ("QP";"state")="active")  ` ME050930 - Check to see if ASG's QueryPack component is available.
		//EXECUTE METHOD("QP_Query";*;Fnd_Gen_CurrentTable )
		//Else 
		//Fnd_Find_Display
	Else 
		QUERY:C277((Fnd_Gen_CurrentTable)->)  // DO NOT CALL Fnd_Menu_QueryEditor here, will cause an infinite loop
		
End case 
