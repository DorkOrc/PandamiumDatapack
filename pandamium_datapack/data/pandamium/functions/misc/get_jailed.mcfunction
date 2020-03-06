scoreboard players operation @p jailed = @s id

tellraw @a [{"selector":"@p"},{"text":" has been jailed by ","color":"red"},{"selector":"@s"},{"text":"!","color":"red"}]
