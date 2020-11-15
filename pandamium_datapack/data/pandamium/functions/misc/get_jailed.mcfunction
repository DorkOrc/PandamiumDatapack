scoreboard players operation @s jailed = @p[tag=doing_trigger] id

tellraw @a [{"text":"","color":"light_purple"},{"text":"[Info]","color":"dark_purple"}," ",{"selector":"@s"}," was jailed by ",{"selector":"@p[tag=doing_trigger]"},"!"]
