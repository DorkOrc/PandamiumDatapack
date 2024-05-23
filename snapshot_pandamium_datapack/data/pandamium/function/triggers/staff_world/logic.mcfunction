execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Staff World]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

execute in pandamium:staff_world positioned 0 64 1 rotated -90 0 run function pandamium:utils/teleport/here/from_source {source:"staff_world"}

execute if score @s staff_world matches 2 in pandamium:staff_world run tp @s 5.5 64 -4.0 facing 7.0 63 -4.0
execute if score @s staff_world matches 3 in pandamium:staff_world run tp @s 5.5 64 -1.5 facing 7.0 63 -1.5
execute if score @s staff_world matches 4 in pandamium:staff_world run tp @s 5.5 64 0.5 facing 7.0 63 0.5
execute if score @s staff_world matches 5 in pandamium:staff_world run tp @s 5.5 64 3.0 facing 7.0 63 2.5
