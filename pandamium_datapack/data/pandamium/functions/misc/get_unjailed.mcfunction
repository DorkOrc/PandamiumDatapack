tp @p 0 66 0
tellraw @p [{"text":"You were unjailed by ","color":"dark_green"},{"selector":"@s"},{"text":" and can now move freely again!","color":"dark_green"}]
tellraw @s [{"text":"You unjailed ","color":"dark_green"},{"selector":"@p"},{"text":".","color":"dark_green"}]

scoreboard players reset @p jailed
