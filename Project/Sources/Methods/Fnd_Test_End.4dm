//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_End

// Closes the host-side run and writes it to a result file, one per matrix cell,
//   so the six runs collate rather than being eyeballed six times.

// The file is named for the cell — version, host state, component state — so a
//   run cannot silently overwrite a different configuration's result.

// Access: Private

// Parameters: None

// Returns: Nothing

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// ----------------------------------------------------

var $result_o : Object
var $resultsFolder_folder : 4D.Folder
var $resultFile_file : 4D.File
var $name_t : Text

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

End if
