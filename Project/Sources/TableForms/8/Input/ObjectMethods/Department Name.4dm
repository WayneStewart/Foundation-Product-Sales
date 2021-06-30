// ----------------------------------------------------
// Object Method: Address

// Created by Dave Batton on Oct 1, 2004
// ----------------------------------------------------
C_TEXT:C284($TextFilter_txt)

Case of 
	: (Form event code:C388=On Load:K2:1)
		$TextFilter_txt:="&"+Char:C90(Double quote:K15:41)+"a-z;A-Z;0-9; -?;:-@;[-';_;];{;};|"+Char:C90(13)+Char:C90(Double quote:K15:41)  // Credit to Chuck Miller for this filter
		OBJECT SET FILTER:C235(Self:C308->;$TextFilter_txt)
	: (Form event code:C388=On Data Change:K2:15)
		Self:C308->:=Fnd_Data_FormatText(Self:C308->)
End case 
