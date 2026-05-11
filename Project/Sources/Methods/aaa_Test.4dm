//%attributes = {"shared":true}
$wombat:=ds:C1482.LineItems
$koala:=OB Entries:C1720($wombat)
$goanna:=$koala.query("value.kind = :1 "; "relatedEntity")
