#{
#	action: "rtp",
#	user_id: INT,
#	*pos: {x: INT, y: INT, z: INT},
#	*attempts: INT,
#}

$execute unless entity @a[scores={id=$(user_id)},limit=1] run return run function pandamium:impl/queue/actions/rtp/unload_chunk with storage pandamium:queue selected.entry.pos
execute if data storage pandamium:queue actions_ran."rtp" run return run function pandamium:impl/queue/utils/continue_pending

# pick new location
execute unless data storage pandamium:queue selected.entry.pos run function pandamium:impl/queue/actions/rtp/new_location

# check location (0 = invalid location, 1 = waiting for chunk to load, 2 = teleported player)
scoreboard players set <result> variable 0
$execute as @a[scores={id=$(user_id)},limit=1] rotated as @s run function pandamium:impl/queue/actions/rtp/load_chunk with storage pandamium:queue selected.entry.pos
execute unless score <result> variable matches 1 run function pandamium:impl/queue/actions/rtp/unload_chunk with storage pandamium:queue selected.entry.pos

# continue if loading chunk
execute if score <result> variable matches 1 run return run function pandamium:impl/queue/utils/continue

# continue if location failed
execute if score <result> variable matches 0 run data remove storage pandamium:queue selected.entry.pos
execute if score <result> variable matches 0 store result score <attempts> variable run data get storage pandamium:queue selected.entry.attempts
execute if score <result> variable matches 0 store result storage pandamium:queue selected.entry.attempts int 1 run scoreboard players add <attempts> variable 1
execute if score <result> variable matches 0 unless score <attempts> variable matches 10.. run return run function pandamium:impl/queue/utils/continue

# end
$execute if score <result> variable matches 0 run tellraw @a[scores={id=$(user_id)},limit=1] [{text:"[Info]",color:"dark_red"},{text:" Iteration limit exceeded! If this issue continues to occur, let a staff member know.",color:"red"}]
execute if score <result> variable matches 0 run return run function pandamium:utils/log {args:{message:[{text:'event="rtp",data={"success":false,"rolls":'},{score:{name:"<attempts>",objective:"variable"}},"}"]}}
