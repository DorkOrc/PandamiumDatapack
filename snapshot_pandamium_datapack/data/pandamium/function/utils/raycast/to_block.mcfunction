execute if entity @s[type=!snowball,type=!marker] run return 0

function pandamium:impl/raycast/pre
execute summon marker run function pandamium:impl/raycast/to_block/main
function pandamium:impl/raycast/post

data modify entity @s Pos set from storage pandamium:temp position

return 1
