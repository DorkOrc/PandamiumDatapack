tellraw @a [{"text":"","color":"light_purple"},{"text":"[Info]","color":"dark_purple"}," ",{"selector":"@s"}," was banned by ",{"selector":"@p[tag=running_trigger]"},"!"]

tag @s add getting_banned
ban @p[tag=getting_banned] You were banned by a moderator!
tag @s remove getting_banned
