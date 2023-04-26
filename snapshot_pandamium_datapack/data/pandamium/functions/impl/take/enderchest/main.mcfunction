scoreboard players set <returned> variable 0
data modify storage pandamium:take enderchest set from entity @s EnderItems

execute store result score <item_count> variable if data storage pandamium:take enderchest[]
execute unless score <item_count> variable matches 1.. store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has no items in their ender chest!","color":"red"}]

tag @s add take.target
execute if score <item_count> variable matches 1.. in pandamium:staff_world positioned 7 64 -2 summon marker run function pandamium:impl/take/enderchest/as_marker
tag @s remove take.target
