//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_End ({$silent_b : Boolean})

// Closes the host-side run, writes it to a result file, one per matrix cell so
//   the six runs collate rather than being eyeballed six times, and reports the
//   tally.

// The report is an alert, because these tests are run by hand from the Method
//   editor and a run that ends with no word either way is indistinguishable from
//   one that died. Pass True to suppress it if this is ever driven headlessly —
//   a modal dialog in a headless process blocks it until someone clicks.

// The file is named for the cell — version, host state, component state — so a
//   run cannot silently overwrite a different configuration's result.

// Access: Private

// Parameters:
//   $silent_b : Boolean : True suppresses the closing alert (optional)

// Returns: Nothing

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// ----------------------------------------------------

#DECLARE($silent_b : Boolean)

var $result_o : Object
var $report_t : Text
var $resultsFolder_folder : 4D:C1709.Folder
var $resultFile_file : 4D:C1709.File
var $name_t : Text

$report_t:="Storage.fpsTest=Null"
If (Storage:C1525.fpsTest#Null:C1517)
	
	Use (Storage:C1525.fpsTest)
		Storage:C1525.fpsTest.closed:=True:C214
	End use 
	
	$result_o:=New object:C1471(\
		"stamp"; OB Copy:C1225(Storage:C1525.fpsTest.stamp); \
		"passed"; Storage:C1525.fpsTest.passed; \
		"failed"; Storage:C1525.fpsTest.failed; \
		"success"; (Storage:C1525.fpsTest.failed=0) && (Storage:C1525.fpsTest.passed>0); \
		"failures"; Storage:C1525.fpsTest.assertions.copy(); \
		"completedAt"; String:C10(Current date:C33; ISO date:K1:8)+"T"+String:C10(Current time:C178))
	
	$name_t:="fpsTest-"+$result_o.stamp.v4D\
		+"-host"+(($result_o.stamp.hostCompiled) ? "Compiled" : "Interpreted")\
		+"-component"+(($result_o.stamp.componentCompiled) ? "Compiled" : "Interpreted")\
		+".json"
	
	$resultsFolder_folder:=Folder:C1567(fk database folder:K87:14).folder("TestResults")
	
	If (Not:C34($resultsFolder_folder.exists))
		$resultsFolder_folder.create()
	End if 
	
	$resultFile_file:=$resultsFolder_folder.file($name_t)
	$resultFile_file.setText(JSON Stringify:C1217($result_o; *); "UTF-8")
	
	If (Not:C34($silent_b))
		$report_t:=($result_o.success ? "PASSED" : "FAILED")+" - "\
			+String:C10($result_o.passed)+" passed, "+String:C10($result_o.failed)+" failed"\
			+Char:C90(Carriage return:K15:38)+Char:C90(Carriage return:K15:38)\
			+$result_o.stamp.configuration+" on 4D "+$result_o.stamp.v4D\
			+Char:C90(Carriage return:K15:38)+$resultFile_file.platformPath
		
		If ($result_o.failed>0)
			$report_t:=$report_t+Char:C90(Carriage return:K15:38)+Char:C90(Carriage return:K15:38)\
				+"First failure:"+Char:C90(Carriage return:K15:38)+$result_o.failures[0].message
		End if 
		
		
		
	End if 
	
End if 

SET TEXT TO PASTEBOARD:C523($report_t)
ALERT:C41($report_t)
