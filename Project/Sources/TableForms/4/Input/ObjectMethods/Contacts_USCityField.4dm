// ----------------------------------------------------

// Object Method: City


// Created by Dave Batton on Oct 1, 2004

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Data Change:K2:15)
		Self:C308->:=Fnd_Data_FormatText(Self:C308->)
End case 
