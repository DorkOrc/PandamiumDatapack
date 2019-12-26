tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You ","color":"green"},{"text":"accepted","color":"aqua"},{"text":" the tpa request from ","color":"green"},{"selector":"@p"},{"text":"!","color":"green"}]
tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" was ","color":"green"},{"text":"accepted","color":"aqua"},{"text":"!","color":"green"}]

execute unless score @p gameplay_perms matches 3.. run scoreboard players set @p tpa_cooldown 6000
tp @p @s

scoreboard players set @s tpa_request 0
