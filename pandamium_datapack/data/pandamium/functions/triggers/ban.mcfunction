execute at @a if score @s ban = @p id unless score @s staff_perms <= @p staff_perms run function pandamium:misc/get_banned 
execute at @a if score @s ban = @p id if score @s staff_perms <= @p staff_perms run tellraw @s [{"text":"You cannot ban ","color":"red"},{"selector":"@p"},{"text":"!","color":"red"}]

scoreboard players reset @s ban
scoreboard players enable @s ban
