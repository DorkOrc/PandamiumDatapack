execute if score @s jail matches 2.. at @a if score @s jail = @p id unless score @p jailed matches 1.. run function pandamium:misc/get_jailed

scoreboard players reset @s jail
scoreboard players enable @s jail
