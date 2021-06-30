// ----------------------------------------------------

// Object Method: Sell Price


// Created by 4D, Inc. on May 2, 2003

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Data Change:K2:15)
		Self:C308->:=Round:C94(Self:C308->;2)
		LineItems_UpdateExtended
End case 
