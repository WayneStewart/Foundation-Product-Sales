// ----------------------------------------------------

// Form Method: [Products].Input


// Created by 4D, Inc. on May 2, 2003

// Modified by Dave Batton on Sep 2, 2004

//   Added the calls to Fnd_Loc_FixLabelWidths.

// ----------------------------------------------------


Case of 
	: (Form event code:C388=On Load:K2:1)
		Fnd_SqNo_SetRecordID
		
		Fnd_Loc_FixLabelWidths(-><>Products_NumberLabel_t;->[Products:5]Product Number:2;-><>Products_NameLabel_t;->[Products:5]Product Name:3;-><>Products_DescriptionLabel_t;->[Products:5]Description:4)
		Fnd_Loc_FixLabelWidths(-><>Products_PriceLabel_t;->[Products:5]List Price:5)
		
		OBJECT SET FORMAT:C236([Products:5]List Price:5;<>Gen_MoneyFormat_t)
End case 

Fnd_IO_InputFormMethod