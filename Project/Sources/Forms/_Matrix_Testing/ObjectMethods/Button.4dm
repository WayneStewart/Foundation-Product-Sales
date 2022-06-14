Fnd_Wnd_Init

$o:=New object:C1471
GET WINDOW RECT:C443($left;$top;$right;$bottom)
FORM GET PROPERTIES:C674("_Matrix_Testing";$width;$height)

$o.Left:=$left
$o.Top:=$top
$o.Right:=$right
$o.Bottom:=$bottom
$o.windowWidth:=$right-$left
$o.windowHeight:=$bottom-$top
$o.formWidth:=$width
$o.formHeight:=$height
$o.screenWidth:=Screen width:C187
$o.screenHeight:=Screen height:C188
$o.menuBar:=Menu bar height:C440
$o.toolbarHeight:=Fnd_Wnd_ToolbarHeight
//$o.titleBarHeight:=$o.formHeight-($top-$bottom)

SET TEXT TO PASTEBOARD:C523(JSON Stringify:C1217($o;*))