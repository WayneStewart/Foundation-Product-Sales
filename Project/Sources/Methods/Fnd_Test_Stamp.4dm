//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_Stamp --> Text

// A local timestamp for the test records: YYYY-MM-DDThh:mm:ss.

// Written by hand rather than with String(date; ISO date), which already yields
//   a complete datetime and produced "2026-08-11T00:00:00T19:04:35" when a time
//   was appended to it.

// Access: Private

// Parameters: None

// Returns:
//   $stamp_t : Text : Local date and time, YYYY-MM-DDThh:mm:ss

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// ----------------------------------------------------

#DECLARE->$stamp_t : Text

$stamp_t:=String:C10(Year of:C25(Current date:C33); "0000")\
+"-"+String:C10(Month of:C24(Current date:C33); "00")\
+"-"+String:C10(Day of:C23(Current date:C33); "00")\
+"T"+String:C10(Current time:C178; HH MM SS:K7:1)
