function pandamium:impl/raycast/pre
tp @s ~ ~ ~ ~ ~
execute at @s if entity @s[type=snowball] run function pandamium:impl/raycast/to_entity/squid
function pandamium:impl/raycast/post
return 1
