scoreboard players remove @s deny_timer 5

execute if score @s deny_timer matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request from ","color":"green"},{"selector":"@p"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
execute if score @s deny_timer matches 0 at @a if score @s tpa_request = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
execute if score @s deny_timer matches 0 run scoreboard players reset @s tpa_request
execute if score @s deny_timer matches 0 run scoreboard players reset @s deny_timer