//%attributes = {"invisible":true}
// ----------------------------------------------------
// Project Method: Fnd_Test_Begin ($configuration_t : Text)

// Opens a host-side test run and stamps it with everything needed to tell one
//   matrix cell from another: the 4D version, whether Foundation is compiled,
//   and whether FPS is compiled.

// This is FPS's own copy, deliberately carrying the same name as Foundation's
//   harness so a test method reads identically in either project. Foundation's
//   Fnd_Test_ methods are Private, so they are not published to a host and there
//   is nothing to collide with — a call from FPS can only reach this one.

// The body is not a copy. Foundation's version records through Fnd_Log_UseLog,
//   which is Private and unreachable from here, and its Storage is a different
//   object from ours. More to the point, Fnd_Log_AddEntry is one of the seven
//   variadic methods under test, so recording through it would take the
//   instrument down with the subject.

// Access: Private

// Parameters:
//   $configuration_t : Text : Names the matrix cell, e.g. "interpreted-in-interpreted"

// Returns: Nothing

// Created by Wayne Stewart (Claude Opus 5) (2026-08-11)
// ----------------------------------------------------

#DECLARE($configuration_t : Text)

var $stamp_o : Object
var $foundationCompiled_b : Boolean

// Foundation reports its own compiled state; ours comes from Is compiled mode.
//   Fnd_Gen_ComponentInfo is Shared, so it answers across the boundary.
$foundationCompiled_b:=False:C215

$stamp_o:=New object:C1471(\
"configuration"; $configuration_t; \
"v4D"; Application version:C493; \
"hostCompiled"; Is compiled mode:C492; \
"componentCompiled"; $foundationCompiled_b; \
"startedAt"; Fnd_Test_Stamp)

Use (Storage:C1525)
	Storage:C1525.fpsTest:=New shared object:C1526(\
	"passed"; 0; \
	"failed"; 0; \
	"closed"; False:C215; \
	"stamp"; OB Copy:C1225($stamp_o; ck shared:K85:29); \
	"assertions"; New shared collection:C1527)
End use
