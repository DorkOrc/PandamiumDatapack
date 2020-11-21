scoreboard players operation @s jailed = @p[tag=running_trigger] id

tellraw @a [{"text":"","color":"light_purple"},{"text":"[Info]","color":"dark_purple"}," ",{"selector":"@s"}," was jailed by ",{"selector":"@p[tag=running_trigger]"},"!"]
