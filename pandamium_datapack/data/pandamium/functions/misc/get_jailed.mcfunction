tellraw @p [{"text":"You were jailed by ","color":"dark_red"},{"selector":"@s"},{"text":"!","color":"dark_red"}]
tellraw @s [{"text":"You jailed ","color":"dark_red"},{"selector":"@p"},{"text":"!","color":"dark_red"}]

scoreboard players set @p jailed 1

execute as @a unless score @s jailed matches 1.. unless score @s jail matches 1.. run tellraw @s [{"selector":"@a[scores={jailed=1}]"},{"text":" has been jailed by ","color":"yellow"},{"selector":"@a[scores={jail=1..}]"},{"text":"!","color":"yellow"}]
