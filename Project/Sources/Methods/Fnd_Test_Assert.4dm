//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_Assert ($ok_b : Boolean; $message_t : Text)

// Records one host-side assertion. Same name and signature as Foundation's, so
//   a test reads identically in either project; see Fnd_Test_Begin for why the
//   body differs.

// The message should state the expectation and the actual value, because a
//   failure is read later from a file rather than watched as it happens.

// Never alerts. A modal dialog in a test blocks the process it runs in, and in a
//   compiled host there is no debugger to interrupt it.

// Access: Private

// Parameters:
//   $ok_b : Boolean : The assertion
//   $message_t : Text : What was expected, and what was actually seen

// Returns: Nothing

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// ----------------------------------------------------

#DECLARE($ok_b : Boolean; $message_t : Text)

var $callChain_c : Collection
var $caller_t : Text

// Element 0 is this method, so element 1 is the test that called it.
//   Get call chain was renamed between versions, so it is reached through
//   Foundation's wrapper, which is Shared and therefore visible here.
$callChain_c:=Fnd_Shell_CommandWrapper("Get call chain")
$caller_t:=($callChain_c.length>=2) ? $callChain_c[1].name : ""

If (Storage:C1525.fpsTest=Null:C1517)
	// A test that forgot to open a run still has somewhere to be recorded.
	Fnd_Test_Begin("unnamed")
End if

Use (Storage:C1525.fpsTest)

	If ($ok_b)
		Storage:C1525.fpsTest.passed:=Storage:C1525.fpsTest.passed+1

	Else
		Storage:C1525.fpsTest.failed:=Storage:C1525.fpsTest.failed+1
		Storage:C1525.fpsTest.assertions.push(New shared object:C1526(\
		"ok"; False:C215; "test"; $caller_t; "message"; $message_t))

	End if

End use
