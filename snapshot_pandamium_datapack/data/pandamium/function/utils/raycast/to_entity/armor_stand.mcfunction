function pandamium:impl/raycast/pre
tp @s ~ ~ ~ ~ ~
execute at @s if entity @s[type=snowball] run function pandamium:impl/raycast/to_entity/armor_stand
function pandamium:impl/raycast/post
