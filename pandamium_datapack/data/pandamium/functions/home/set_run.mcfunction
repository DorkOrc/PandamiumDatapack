execute store result score <home_x> variable run data get entity @s Pos[0]
execute store result score <home_y> variable run data get entity @s Pos[1]
execute store result score <home_z> variable run data get entity @s Pos[2]
scoreboard players set <home_d> variable 0
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set <home_d> variable -1
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set <home_d> variable 1

execute if score @s sethome matches -1 run function pandamium:home/save_1
execute if score @s sethome matches -2 run function pandamium:home/save_2
execute if score @s sethome matches -3 run function pandamium:home/save_3
execute if score @s sethome matches -4 run function pandamium:home/save_4
execute if score @s sethome matches -5 run function pandamium:home/save_5
execute if score @s sethome matches -6 run function pandamium:home/save_6
execute if score @s sethome matches -7 run function pandamium:home/save_7
execute if score @s sethome matches -8 run function pandamium:home/save_8
execute if score @s sethome matches -9 run function pandamium:home/save_9
execute if score @s sethome matches -10 run function pandamium:home/save_10

scoreboard players set <-1> variable -1
scoreboard players operation @s sethome *= <-1> variable

execute if score <home_d> variable matches -1 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in the ",{"text":"Nether","color":"aqua"},"!"]
execute if score <home_d> variable matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in the ",{"text":"Overworld","color":"aqua"},"!"]
execute if score <home_d> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in the ",{"text":"End","color":"aqua"},"!"]

scoreboard players operation @s sethome *= <-1> variable
