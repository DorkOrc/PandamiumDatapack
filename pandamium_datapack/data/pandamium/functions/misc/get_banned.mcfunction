tellraw @s [{"text":"You banned ","color":"red"},{"selector":"@p"},{"text":"!","color":"red"}]
execute as @a unless score @s ban matches 1.. run tellraw @s [{"selector":"@p"},{"text":" has been banned by ","color":"yellow"},{"selector":"@a[scores={ban=1..}]"},{"text":"!","color":"yellow"}]

ban @p You were banned by a moderator!
