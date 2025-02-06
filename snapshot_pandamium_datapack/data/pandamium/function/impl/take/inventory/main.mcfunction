# outputs:
# - score <item_count> variable

execute store result score <item_count> variable if items entity @s container.* *
execute store result score <count> variable if items entity @s armor.* *
scoreboard players operation <item_count> variable += <count> variable
execute store result score <count> variable if items entity @s weapon.offhand *
scoreboard players operation <item_count> variable += <count> variable

execute unless score <item_count> variable matches 1.. run return fail

tag @s add take.target
execute in pandamium:staff_world positioned 7 64 -5 summon marker run function pandamium:impl/take/inventory/as_marker
tag @s remove take.target

return 1
