function pandamium:impl/raycast/pre
tp @s ~ ~ ~ ~ ~
execute at @s if entity @s[type=snowball] run function pandamium:impl/raycast/to_entity/item_frame
function pandamium:impl/raycast/post
