execute if score @p tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"can't","color":"aqua"},{"text":" send a tpa request to ","color":"green"},{"selector":"@p"},{"text":" because they already have ","color":"green"},{"text":"another tpa request","color":"aqua"},{"text":"!","color":"green"}]

execute unless score @p tpa_request matches 1.. run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" You received a ","color":"green"},{"text":"tpa request","color":"aqua"},{"text":" from ","color":"green"},{"selector":"@s"},{"text":"!\nYou can click to [","color":"green"},{"text":"accept","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpa_accept set 1"}},{"text":"] or [","color":"green"},{"text":"deny","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger tpa_accept set -1"}},{"text":"] the request!","color":"green"}]
execute unless score @p tpa_request matches 1.. run playsound minecraft:entity.silverfish.death master @p 
execute unless score @p tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request was ","color":"green"},{"text":"successfully","color":"aqua"},{"text":" sent to ","color":"green"},{"selector":"@p"},{"text":"!","color":"green"}]

execute unless score @p tpa_request matches 1.. run scoreboard players set @p tpa_request_time 1200
execute unless score @p tpa_request matches 1.. run scoreboard players operation @p tpa_request = @s id
