execute if score @s tpa_request_time matches 0.. run scoreboard players remove @s tpa_request_time 5

execute unless score @s tpa_request_time matches 0.. at @a if score @s tpa_request = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request from ","color":"green"},{"selector":"@p"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
execute unless score @s tpa_request_time matches 0.. at @a if score @s tpa_request = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
execute unless score @s tpa_request_time matches 0.. run scoreboard players reset @s tpa_request
execute unless score @s tpa_request_time matches 0.. run scoreboard players reset @s tpa_request_time
