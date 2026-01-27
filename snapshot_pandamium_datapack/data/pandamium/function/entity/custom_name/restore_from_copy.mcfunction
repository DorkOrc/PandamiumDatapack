execute unless predicate pandamium:entity/custom_name/copied run return run data remove entity @s CustomName

function do:text/resolve. {args:{text_component:{score:{name:"@s",objective:"custom_name"}}}}
data modify entity @s CustomName set from storage do:io output
