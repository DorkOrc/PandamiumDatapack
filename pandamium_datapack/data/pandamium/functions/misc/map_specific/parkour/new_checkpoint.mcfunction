tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You reached ","color":"dark_aqua"},[{"text":"Checkpoint ","bold":true,"color":"aqua"},{"score":{"name":"<checkpoint_id>","objective":"variable"}}],"!"]]
scoreboard players operation @s parkour.checkpoint = <checkpoint_id> variable
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2
