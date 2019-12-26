tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"denied","color":"aqua"},{"text":" the tpa request from ","color":"green"},{"selector":"@p"},{"text":"!","color":"green"}]
tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" was ","color":"green"},{"text":"denied","color":"aqua"},{"text":"!","color":"green"}]

scoreboard players set @s tpa_request 0
