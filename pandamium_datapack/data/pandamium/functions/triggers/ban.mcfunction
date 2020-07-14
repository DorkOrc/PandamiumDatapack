execute at @a if score @s ban = @p id unless score @s staff_perms <= @p staff_perms run function pandamium:misc/get_banned 
execute at @a if score @s ban = @p id if score @s staff_perms <= @p staff_perms run tellraw @s [{"text":"You cannot ban ","color":"red"},{"selector":"@p"},{"text":"!","color":"red"}]

scoreboard players set @s temp_1 0
execute at @a if score @s ban = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Ban]", "color":"dark_red"}," No player found with that ID."]

scoreboard players reset @s ban
scoreboard players enable @s ban
