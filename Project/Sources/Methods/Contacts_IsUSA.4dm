//%attributes = {"shared":true}
// ----------------------------------------------------

// Project Method: Contacts_IsUSA (country) --> Boolean


// Returns True if the country is the United States.


// Method Type: Protected


// Parameters: 

//   $1 : Text : The country name


// Returns: 

//   $0 : Boolean : True if US


// Created by Dave Batton on Aug 8, 2004

// ----------------------------------------------------


C_BOOLEAN:C305($0;$isUS_b)
C_TEXT:C284($1;$country_t)

$country_t:=$1

$country_t:=Replace string:C233($country_t;" ";"")
$country_t:=Replace string:C233($country_t;".";"")

Case of 
	: (($country_t="US") | ($country_t="USA"))
		$isUS_b:=True:C214
		
	: (($country_t="UnitedStates") | ($country_t="UnitedStatesOfAmerica"))
		$isUS_b:=True:C214
		
	: ($country_t="America")
		$isUS_b:=True:C214
		
	Else 
		$isUS_b:=False:C215
End case 

$0:=$isUS_b