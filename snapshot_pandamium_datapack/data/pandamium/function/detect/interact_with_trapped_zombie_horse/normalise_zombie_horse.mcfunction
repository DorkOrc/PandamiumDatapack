execute on passengers if entity @s[type=#zombies] run return fail

tag @s remove pandamium.trapped
tag @s remove pandamium.trap_triggered
attribute @s minecraft:movement_speed modifier remove pandamium:undead_rider_buff

execute store result entity @s Health float 0.01 run attribute @s minecraft:max_health base get 100
execute anchored eyes run particle heart ^ ^ ^ 0.5 0.5 0.5 0 5
