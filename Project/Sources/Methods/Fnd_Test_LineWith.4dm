//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_LineWith ($text_t : Text; $token_t : Text) --> Text

// Returns the first line of $text_t containing $token_t, or an empty string.

// A helper for reading assertions out of a log file, kept separate so the test
//   reads as a list of assertions rather than as string handling.

// Access: Private

// Parameters:
//   $text_t : Text : The text to search, typically a whole log file
//   $token_t : Text : The token identifying the line

// Returns:
//   $line_t : Text : The matching line, or "" if the token appears nowhere

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// ----------------------------------------------------

#DECLARE($text_t : Text; $token_t : Text)->$line_t : Text

var $candidate_t : Text
var $lines_c : Collection

$line_t:=""

  // The writer terminates entries with a carriage return, so split on that and
  //   tidy any line feed a text editor may have left behind.
$lines_c:=Split string:C1554(Replace string:C233($text_t; "\r\n"; "\r"); "\r")

For each ($candidate_t; $lines_c) Until ($line_t#"")

	If (Position:C15($token_t; $candidate_t)>0)
		$line_t:=$candidate_t
	End if

End for each
