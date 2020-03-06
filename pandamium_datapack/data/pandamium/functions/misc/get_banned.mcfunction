execute as @a unless score @s ban matches 1.. run tellraw @s [{"selector":"@p"},{"text":" has been banned by ","color":"red"},{"selector":"@a[scores={ban=1..}]"},{"text":"!","color":"red"}]

ban @p You were banned by a moderator!
