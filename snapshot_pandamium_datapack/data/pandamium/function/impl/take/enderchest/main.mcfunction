# outputs:
# - score <item_count> variable

execute store result score <item_count> variable if items entity @s enderchest.* *

execute unless score <item_count> variable matches 1.. run return fail

tag @s add take.target
execute in pandamium:staff_world positioned 7 64 -2 summon marker run function pandamium:impl/take/enderchest/as_marker
tag @s remove take.target

return 1
