execute at @a if score @s ban = @p id unless score @p staff_perms matches 2.. run function pandamium:misc/get_banned 
execute at @a if score @s ban = @p id if score @p staff_perms matches 2.. run tellraw @s [{"text":"You cannot ban ","color":"red"},{"selector":"@p"},{"text":"!","color":"red"}]

scoreboard players reset @s ban
scoreboard players enable @s ban
