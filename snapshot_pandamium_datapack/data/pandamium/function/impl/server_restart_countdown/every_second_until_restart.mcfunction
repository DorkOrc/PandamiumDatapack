# fast forward if no players are online
execute if score <player_count> global matches 0 if score <seconds_until_restart> global matches 11.. run scoreboard players set <seconds_until_restart> global 10

# get broadcast components
execute store result score <minutes> variable store result score <seconds> variable run scoreboard players get <seconds_until_restart> global
scoreboard players operation <minutes> variable /= #60 constant
scoreboard players operation <seconds> variable %= #60 constant

execute if score <minutes> variable matches 2.. run data modify storage pandamium:temp minutes_left set value [{score:{name:"<minutes>",objective:"variable"}}," minutes"]
execute if score <minutes> variable matches 1 run data modify storage pandamium:temp minutes_left set value "1 minute"
execute if score <minutes> variable matches 0 run data modify storage pandamium:temp minutes_left set value ""
execute if score <seconds> variable matches 2.. run data modify storage pandamium:temp seconds_left set value [{score:{name:"<seconds>",objective:"variable"}}," seconds"]
execute if score <seconds> variable matches 1 run data modify storage pandamium:temp seconds_left set value "1 second"
execute if score <seconds> variable matches 0 run data modify storage pandamium:temp seconds_left set value ""

execute if score <minutes> variable matches 1.. if score <seconds> variable matches 1.. run data modify storage pandamium:temp time_left set value [{storage:"pandamium:temp",nbt:"minutes_left",interpret:true}," and ",{storage:"pandamium:temp",nbt:"seconds_left",interpret:true}]
execute if score <minutes> variable matches 1.. if score <seconds> variable matches 0 run data modify storage pandamium:temp time_left set value {storage:"pandamium:temp",nbt:"minutes_left",interpret:true}
execute if score <minutes> variable matches 0 run data modify storage pandamium:temp time_left set value {storage:"pandamium:temp",nbt:"seconds_left",interpret:true}

# broadcast
scoreboard players set <broadcast> variable 1
execute unless score <server_restart_countdown_start> global matches 1 unless score <seconds_until_restart> global matches 300 unless score <seconds_until_restart> global matches 60 unless score <seconds_until_restart> global matches 30 unless score <seconds_until_restart> global matches 10 unless score <seconds_until_restart> global matches 1..5 run scoreboard players set <broadcast> variable 0
execute if score <broadcast> variable matches 1 if score <server_restart_countdown_start> global matches 1 run tellraw @a [{text:"[Warning]",color:"dark_red"},{text:" The server will be temporarily closed in\n ",color:"red",extra:[{storage:"pandamium:temp",nbt:"time_left",interpret:true,bold:true,color:"yellow"},{storage:"pandamium:global",nbt:"restart_reason",interpret:true},"!"]}]
execute if score <broadcast> variable matches 1 unless score <server_restart_countdown_start> global matches 1 run tellraw @a [{text:"[Warning]",color:"dark_red"},{text:" The server will close in ",color:"red",extra:[{storage:"pandamium:temp",nbt:"time_left",interpret:true,bold:true,color:"yellow"},"!"]}]
execute if score <broadcast> variable matches 1 as @a[scores={online_ticks=21..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

execute if score <broadcast> variable matches 1 if score <server_restart_countdown_start> global matches 1 run function pandamium:utils/log {args:{message:[{text:'event="restart_countdown",data={"time_left":"'},{storage:"pandamium:temp",nbt:"time_left",interpret:true},{text:'","restart_reason":"'},{storage:"pandamium:global",nbt:"restart_reason",interpret:true},{text:'","countdown_start":true}'}]}}
execute if score <broadcast> variable matches 1 unless score <server_restart_countdown_start> global matches 1 run function pandamium:utils/log {args:{message:[{text:'event="restart_countdown",data={"time_left":"'},{storage:"pandamium:temp",nbt:"time_left",interpret:true},{text:'","restart_reason":"'},{storage:"pandamium:global",nbt:"restart_reason",interpret:true},{text:'","countdown_start":false}'}]}}

scoreboard players reset <server_restart_countdown_start> global

# join message
execute if score <broadcast> variable matches 0 run tellraw @a[scores={online_ticks=1..20}] [{text:"[Private Warning]",color:"dark_red"},{text:" The server will be temporarily closed in\n ",color:"red",extra:[{storage:"pandamium:temp",nbt:"time_left",interpret:true,bold:true,color:"yellow"},{storage:"pandamium:global",nbt:"restart_reason",interpret:true},"!"]}]
execute if score <broadcast> variable matches 0 as @a[scores={online_ticks=1..20}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

# restart
execute if score <seconds_until_restart> global matches 0 summon marker if function pandamium:utils/discard_marker run function pandamium:impl/server_restart_countdown/kick_players_and_stop_server

# loop
scoreboard players remove <seconds_until_restart> global 1
execute if score <seconds_until_restart> global matches 0.. run schedule function pandamium:impl/server_restart_countdown/every_second_until_restart 1s
