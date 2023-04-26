execute at @a[tag=receiver,limit=1] run function pandamium:misc/teleport/here
gamemode survival @s[gamemode=spectator,predicate=!pandamium:in_spawn,scores={staff_perms=..1}]
scoreboard players reset @a[tag=receiver,limit=1] tpa_request.sender_id

tellraw @a[tag=receiver,limit=1] [{"text":"","color":"green"},{"text":"[TPA]","color":"dark_green"},{"text":" Accepted ","color":"aqua"},[{"selector":"@s"},"'s"]," TPA request!"]
tellraw @s [{"text":"[TPA] ","color":"blue"},{"selector":"@a[tag=receiver,limit=1]"},{"text":" accepted","color":"aqua"},{"text":" your TPA request!","color":"green"}]
scoreboard players set <returned> variable 1
