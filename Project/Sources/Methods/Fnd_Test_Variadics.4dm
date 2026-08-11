//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_Variadics ({$configuration_t : Text})

// Calls a Foundation variadic method across the component boundary and checks
//   that every argument arrived. Run it from the Method editor with FPS open.

// Only Fnd_Log_AddEntry is exercised, deliberately. It is the one variadic that
//   leaves evidence a host can read back, so it proves the boundary end to end
//   rather than merely proving the call did not error. The other six need either
//   an open form or setup that would obscure what is being tested.

// What is actually under test is the seam between numbered and named parameter
//   access. Under the classic declaration $1 is copied into a named local; under
//   the ellipsis form that copy is a self-assignment. An alias line commented on
//   the wrong side leaves arguments empty AND STILL COMPILES, so only a call
//   finds it. Fnd_Log_AddEntry loops ${$i} from 2 to Count parameters, so a
//   mistake shows up as missing trailing fields rather than as an error.

// Access: Private

// Parameters:
//   $configuration_t : Text : Names the matrix cell (optional, defaults to a description of the running state)

// Returns: Nothing

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// ----------------------------------------------------

#DECLARE($configuration_t : Text)

var $token_t; $line_t; $logText_t; $found_t; $where_t : Text
var $logsFolder_folder : 4D.Folder
var $file_file : 4D.File
var $files_c; $fields_c : Collection
var $attempt_i; $expected_i : Integer
var $configuration_v : Variant

$configuration_v:=$configuration_t

If (Count parameters:C259=0)
	$configuration_v:="host"+(Is compiled mode:C492 ? "Compiled" : "Interpreted")
End if

Fnd_Test_Begin($configuration_v)

  // A token unique to this run, so the assertions cannot match an older line.
$token_t:="FPSVARIADIC"+Replace string:C233(String:C10(Milliseconds:C459); " "; "")

  // Fnd_Log_Enable is Shared; Fnd_Log_UseLog is not, so the host cannot choose
  //   the log and has to find whichever one Foundation is writing to.
Fnd_Log_Enable(True:C214)

Fnd_Log_AddEntry($token_t+"-one")
Fnd_Log_AddEntry($token_t+"-two"; "second")
Fnd_Log_AddEntry($token_t+"-five"; "second"; "third"; "fourth"; "fifth")

  // The entry is handed to a worker, so the file is written after the call
  //   returns. Poll rather than assume, and rather than sleeping a fixed time.
$logsFolder_folder:=Folder:C1567(fk logs folder:K87:17)
$where_t:=$logsFolder_folder.platformPath
$found_t:=""

For ($attempt_i; 1; 20)

	If ($found_t="")
		DELAY PROCESS:C323(Current process:C322; 15)
		$files_c:=$logsFolder_folder.files()

		For each ($file_file; $files_c) Until ($found_t#"")

			If (Position:C15(".txt"; $file_file.name)>0)
				$logText_t:=$file_file.getText("UTF-8")

				If (Position:C15($token_t; $logText_t)>0)
					$found_t:=$logText_t
				End if

			End if

		End for each

	End if

End for

Fnd_Test_Assert($found_t#""; "the log entries should reach a file in "+$where_t+" but no file contained "+$token_t)

If ($found_t#"")

	  // One argument. The line is timestamp, tab, the argument.
	$line_t:=Fnd_Test_LineWith($found_t; $token_t+"-one")
	$fields_c:=Split string:C1554($line_t; "\t")
	Fnd_Test_Assert($fields_c.length=2; "a one-argument call should log 2 fields but logged "+String:C10($fields_c.length)+" - "+$line_t)

	  // Two arguments.
	$line_t:=Fnd_Test_LineWith($found_t; $token_t+"-two")
	$fields_c:=Split string:C1554($line_t; "\t")
	Fnd_Test_Assert($fields_c.length=3; "a two-argument call should log 3 fields but logged "+String:C10($fields_c.length)+" - "+$line_t)
	Fnd_Test_Assert($fields_c[2]="second"; "the second argument should be \"second\" but is \""+$fields_c[2]+"\"")

	  // Five arguments. This is the case that fails when the declaration form is
	  //   wrong: the trailing ones go missing rather than the call erroring.
	$line_t:=Fnd_Test_LineWith($found_t; $token_t+"-five")
	$fields_c:=Split string:C1554($line_t; "\t")
	$expected_i:=6
	Fnd_Test_Assert($fields_c.length=$expected_i; "a five-argument call should log "+String:C10($expected_i)+" fields but logged "+String:C10($fields_c.length)+" - "+$line_t)

	If ($fields_c.length=$expected_i)
		Fnd_Test_Assert($fields_c[2]="second"; "argument 2 should be \"second\" but is \""+$fields_c[2]+"\"")
		Fnd_Test_Assert($fields_c[3]="third"; "argument 3 should be \"third\" but is \""+$fields_c[3]+"\"")
		Fnd_Test_Assert($fields_c[4]="fourth"; "argument 4 should be \"fourth\" but is \""+$fields_c[4]+"\"")
		Fnd_Test_Assert($fields_c[5]="fifth"; "argument 5 should be \"fifth\" but is \""+$fields_c[5]+"\"")
	End if

End if

Fnd_Test_End
