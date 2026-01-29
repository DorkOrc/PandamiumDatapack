scoreboard players operation <ticks> variable = @s gift_cooldown
function pandamium:utils/get/time_from_ticks_without_days

execute if score @s gift_cooldown >= #ticks_per_minute constant store result score <minutes> variable run data get storage pandamium:temp time[2]
execute if score @s gift_cooldown >= #ticks_per_minute constant run tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" You cannot use this trigger for ",color:"red",extra:[{score:{name:"<minutes>",objective:"variable"},bold:true}," minutes!"]}]
execute unless score @s gift_cooldown >= #ticks_per_minute constant store result score <seconds> variable run data get storage pandamium:temp time[1]
execute unless score @s gift_cooldown >= #ticks_per_minute constant run tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" You cannot use this trigger for ",color:"red",extra:[{score:{name:"<seconds>",objective:"variable"},bold:true}," seconds!"]}]
