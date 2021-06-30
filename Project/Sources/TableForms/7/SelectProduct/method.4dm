// ----------------------------------------------------

// Form Method: [LineItems].SelectProduct


// Created by 4D, Inc. on May 2, 2003

// Modified by Dave Batton on Aug 29, 2004

//   Money formats are now handled procedurally.

// ----------------------------------------------------


C_LONGINT:C283($move_i)

Case of 
	: (Form event code:C388=On Load:K2:1)
		// Localize the OK and Canel buttons.
		
		$move_i:=Fnd_Gen_ButtonText(->LineItems_OKButton_i;Fnd_Loc_GetString("Loc_General";"OKButton");Align right:K42:4)
		OBJECT MOVE:C664(LineItems_CancelButton_i;$move_i;0)
		Fnd_Gen_ButtonText(->LineItems_CancelButton_i;Fnd_Loc_GetString("Loc_General";"CancelButton");Align right:K42:4)
		
		OBJECT SET FORMAT:C236(LineItems_ProductPrices_ar;<>Gen_MoneyFormat_t)  // DB040829 - Added
		
		OBJECT SET TITLE:C194(*;"ProductNumberHeader";<>Products_SelectNumberLabel_t)
		
End case 

// We don't check for an event here because we want this
//   test done regardless of the event.

If (LineItems_ProductNumbers_at=0)
	DISABLE BUTTON(->LineItems_OKButton_i)
Else 
	ENABLE BUTTON(->LineItems_OKButton_i)
End if 
