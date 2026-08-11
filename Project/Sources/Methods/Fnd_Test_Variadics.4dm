//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_Variadics ({$configuration_t : Text})

// Calls a Foundation variadic method across the component boundary and checks
//   that every argument arrived. Run it from the Method editor with FPS open.

// Fnd_Msg_PackParameters is the subject: it takes any number of text arguments
//   and returns them joined by a delimiter, so the answer comes straight back
//   and nothing sits between the call and the assertion.

// It replaced Fnd_Log_AddEntry, which was tried first because it leaves evidence
//   on disk. That was the wrong choice: the evidence path is log selection and
//   then a worker, and Fnd_Log_UseLog is Private, so a host cannot select a log.
//   The test could not tell "the arguments did not arrive" from "logging wrote
//   nowhere" — the instrument was entangled with the subject.

// What is under test is the seam between numbered and named parameter access.
//   Under the classic declaration $1 is copied into a named local; under the
//   ellipsis form that copy is a self-assignment. An alias line commented on the
//   wrong side leaves arguments empty AND STILL COMPILES, so only a call finds
//   it. PackParameters loops ${$i} from 2 to Count parameters, so the symptom is
//   missing or empty trailing segments rather than an error.

// The assertions deliberately mirror Foundation's own Fnd_Test_PackParameters,
//   so a difference between the two is a difference the boundary made.

// Access: Private

// Parameters:
//   $configuration_t : Text : Names the matrix cell (optional, defaults to a description of the running state)

// Returns: Nothing

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// Wayne Stewart (Claude Opus 5) 2026-08-11 - Subject changed from Fnd_Log_AddEntry, whose
//       evidence path a host cannot drive
// ----------------------------------------------------

#DECLARE($configuration_t : Text)

var $delimiter_t; $result_t; $expected_t : Text
var $configuration_v : Variant

$configuration_v:=$configuration_t

If (Count parameters:C259=0)
	$configuration_v:="host"+(Is compiled mode:C492 ? "Compiled" : "Interpreted")
End if

Fnd_Test_Begin($configuration_v)

  // The delimiter is an interprocess variable inside the component, so a host
  //   cannot read it. Derive it: two empty arguments pack to the delimiter alone.
  //   This is also the first assertion — it proves two arguments crossed.
$delimiter_t:=Fnd_Msg_PackParameters(""; "")
Fnd_Test_Assert($delimiter_t#""; "two empty arguments should pack to the delimiter alone, but gave an empty string - either the second argument did not arrive or the delimiter is empty")

  // One argument comes back unchanged.
$result_t:=Fnd_Msg_PackParameters("message")
Fnd_Test_Assert($result_t="message"; "one argument should come back unchanged but gave \""+$result_t+"\"")

  // Two arguments, joined.
$result_t:=Fnd_Msg_PackParameters("message"; "one")
$expected_t:="message"+$delimiter_t+"one"
Fnd_Test_Assert($result_t=$expected_t; "two arguments should be joined by the delimiter but gave \""+$result_t+"\"")

  // Four arguments, in order. This is the case that fails when the declaration
  //   form is wrong: the trailing ones go missing rather than the call erroring.
$result_t:=Fnd_Msg_PackParameters("message"; "one"; "two"; "three")
$expected_t:="message"+$delimiter_t+"one"+$delimiter_t+"two"+$delimiter_t+"three"
Fnd_Test_Assert($result_t=$expected_t; "four arguments should be joined in order but gave \""+$result_t+"\"")

  // Read the segments back, which exercises the boundary in the other direction.
$result_t:=Fnd_Msg_PackParameters("message"; "one"; "two")
Fnd_Test_Assert(Fnd_Msg_GetParameter($result_t; 1)="message"; "segment 1 should be \"message\" but is \""+Fnd_Msg_GetParameter($result_t; 1)+"\"")
Fnd_Test_Assert(Fnd_Msg_GetParameter($result_t; 2)="one"; "segment 2 should be \"one\" but is \""+Fnd_Msg_GetParameter($result_t; 2)+"\"")
Fnd_Test_Assert(Fnd_Msg_GetParameter($result_t; 3)="two"; "segment 3 should be \"two\" but is \""+Fnd_Msg_GetParameter($result_t; 3)+"\"")

Fnd_Test_End
