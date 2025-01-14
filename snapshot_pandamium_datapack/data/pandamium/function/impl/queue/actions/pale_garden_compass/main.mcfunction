#{
#	action: "pale_garden_compass",
#	placed: BOOL,
#	slot: STRING,
#	item: ITEM,
#	user_id: INT
#}

# handle collisions
execute if data storage pandamium:queue actions_ran."pale_garden_compass" run return run function pandamium:impl/queue/utils/continue_pending

# handle player leaving before item is returned
$execute unless entity @a[scores={id=$(user_id)},limit=1] run return run function pandamium:impl/queue/actions/pale_garden_compass/player_left

# cooldown
execute store result score <cooldown> variable run data get storage pandamium:queue selected.entry.cooldown
execute if data storage pandamium:queue selected.entry.cooldown if score <cooldown> variable matches ..0 run return 0
execute if data storage pandamium:queue selected.entry.cooldown store result storage pandamium:queue selected.entry.cooldown short 1 run scoreboard players remove <cooldown> variable 1
execute if data storage pandamium:queue selected.entry.cooldown run return run function pandamium:impl/queue/utils/continue

# check stage
execute store success score <placed> variable if data storage pandamium:queue selected.entry{placed:1b}

# if first stage, initialise command block containing "/locate" command, and then wait for the next tick
execute if score <placed> variable matches 0 in pandamium:staff_world run setblock 6 2 0 air
$execute if score <placed> variable matches 0 in pandamium:staff_world run setblock 6 2 0 command_block{auto:1b,Command:'execute at @a[scores={id=$(user_id)},limit=1] run locate biome minecraft:pale_garden'} replace
execute if score <placed> variable matches 0 run data modify storage pandamium:queue selected.entry.placed set value 1b

execute if score <placed> variable matches 0 run data modify storage pandamium:queue selected.entry.meta.value set value 1
execute if score <placed> variable matches 0 run return run function pandamium:impl/queue/utils/continue

# if second stage, get the output of the command block and extract the coordinates and distance from it
data remove storage pandamium:text compound
execute in pandamium:staff_world run data modify storage pandamium:text compound set from block 6 2 0 LastOutput
$execute unless data storage pandamium:text compound.extra[0].with[1].with[0].with[0]."" as @a[scores={id=$(user_id)},limit=1] run return run function pandamium:impl/queue/actions/pale_garden_compass/failure with storage pandamium:queue selected.entry

data modify storage pandamium:queue selected.entry.x set from storage pandamium:text compound.extra[0].with[1].with[0].with[0].""
data modify storage pandamium:queue selected.entry.y set from storage pandamium:text compound.extra[0].with[1].with[0].with[1].""
data modify storage pandamium:queue selected.entry.z set from storage pandamium:text compound.extra[0].with[1].with[0].with[2].""
data modify storage pandamium:queue selected.entry.distance set from storage pandamium:text compound.extra[0].with[2].""

execute store result storage pandamium:queue selected.entry.current_gametime int 1 run scoreboard players get <current_gametime> global

$execute as @a[scores={id=$(user_id)},limit=1] run function pandamium:impl/queue/actions/pale_garden_compass/success with storage pandamium:queue selected.entry

# start cooldown
execute store result storage pandamium:queue selected.entry.cooldown short 1 run scoreboard players set <cooldown> variable 20
return run function pandamium:impl/queue/utils/continue
