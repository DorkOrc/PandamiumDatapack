function pandamium:home/tp

tellraw @s [{"text":"[Home]","color":"dark_green"},{"text":" Successfully teleported to home ","color":"green"},{"score":{"name":"@s","objective":"home"},"color":"dark_green"},{"text":"!","color":"green"}]

execute if score @s gameplay_perms matches 0 run scoreboard players set @s home_cooldown 6000