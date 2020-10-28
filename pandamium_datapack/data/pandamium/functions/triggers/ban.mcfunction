execute at @a if score @s ban = @p id unless score @s staff_perms <= @p staff_perms run function pandamium:misc/get_banned
execute at @a if score @s ban = @p id if score @s staff_perms <= @p staff_perms run tellraw @s [{"text":"","color":"red"},{"text":"[Ban]","color":"dark_red"},"You cannot ban ",{"selector":"@p"},"."]

scoreboard players reset @s ban
scoreboard players enable @s ban
