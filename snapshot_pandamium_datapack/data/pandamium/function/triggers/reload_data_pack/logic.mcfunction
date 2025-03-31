execute unless score @s staff_perms matches 1.. run return run tellraw @s [{color:"dark_red",text:"[Reload Data Pack]"},{color:"red",text:" You do not have permission to use this trigger!"}]

scoreboard players operation <minutes_left> variable = <precise_minute> global
scoreboard players operation <minutes_left> variable %= #15 constant
scoreboard players remove <minutes_left> variable 15
scoreboard players operation <minutes_left> variable *= #-1 constant

scoreboard players operation <seconds_left> variable = <precise_second> global
scoreboard players operation <seconds_left> variable %= #seconds_per_minute constant
scoreboard players operation <seconds_left> variable -= #seconds_per_minute constant
scoreboard players operation <seconds_left> variable *= #-1 constant

execute if score <minutes_left> variable matches 1.. if score <seconds_left> variable matches 30.. run scoreboard players add <minutes_left> variable 1
data modify storage pandamium:local functions."pandamium:triggers/reload_data_pack/*".time_left set value [{score:{name:"<seconds_left>",objective:"variable"}}," seconds"]
execute if score <minutes_left> variable matches 2.. run data modify storage pandamium:local functions."pandamium:triggers/reload_data_pack/*".time_left set value [{score:{name:"<minutes_left>",objective:"variable"}}," minutes"]
execute if score <minutes_left> variable matches 1 run data modify storage pandamium:local functions."pandamium:triggers/reload_data_pack/*".time_left set value "1 minute"
execute if score <minutes_left> variable matches 0 if score <seconds_left> variable matches 2.. run data modify storage pandamium:local functions."pandamium:triggers/reload_data_pack/*".time_left set value [{score:{name:"<seconds_left>",objective:"variable"}}," seconds"]
execute if score <minutes_left> variable matches 0 if score <seconds_left> variable matches 1 run data modify storage pandamium:local functions."pandamium:triggers/reload_data_pack/*".time_left set value "1 second"

# feedback
execute unless score <reload_data_pack> global matches 1 run tellraw @s [{color:"dark_green",text:"[Reload Data Pack]"},{color:"green",text:" Scheduled the data pack to be reloaded! "},[{color:"gray",italic:true,text:"(≈ "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/reload_data_pack/*".time_left',interpret:true},")"]]
execute if score <reload_data_pack> global matches 1 run tellraw @s [{color:"dark_red",text:"[Reload Data Pack]"},{color:"red",text:" Already scheduled the data pack to be reloaded! "},[{color:"gray",italic:true,text:"(≈ "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/reload_data_pack/*".time_left',interpret:true},")"]]

# schedule
function pandamium:misc/reload_data_pack
