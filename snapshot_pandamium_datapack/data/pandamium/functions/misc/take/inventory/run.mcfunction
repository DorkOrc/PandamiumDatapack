scoreboard players set <returned> variable 0
data modify storage pandamium:take inventory set from entity @s Inventory

execute store result score <item_count> variable if data storage pandamium:take inventory[]
execute unless score <item_count> variable matches 1.. store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has no items in their inventory!","color":"red"}]

tag @s add take.target
execute if score <item_count> variable matches 1.. in pandamium:staff_world positioned 7 64 -5 summon marker run function pandamium:misc/take/inventory/as_marker
tag @s remove take.target
