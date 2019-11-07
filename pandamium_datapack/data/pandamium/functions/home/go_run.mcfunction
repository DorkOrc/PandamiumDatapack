function pandamium:home/tp

tellraw @s [{"text":"[Home]","color":"dark_green"},{"text":" Successfully teleported to home ","color":"green"},{"score":{"name":"@s","objective":"home"},"color":"dark_green"},{"text":"!","color":"green"}]

execute unless score @s gameplay_perms matches 3 run scoreboard players set @s home_cooldown 6000