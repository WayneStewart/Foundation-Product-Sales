// ----------------------------------------------------

// Object Method: Product Name


// Created by Dave Batton on Oct 1, 2004

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Data Change:K2:15)
		Self:C308->:=Fnd_Text_StripSpaces(Self:C308->)
End case 
