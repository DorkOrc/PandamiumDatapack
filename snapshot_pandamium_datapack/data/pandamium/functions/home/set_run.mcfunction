data modify storage pandamium:temp nbt set from entity @s
execute store result score <home_x> variable run data get storage pandamium:temp nbt.Pos[0]
execute store result score <home_y> variable run data get storage pandamium:temp nbt.Pos[1]
execute store result score <home_z> variable run data get storage pandamium:temp nbt.Pos[2]
scoreboard players operation <home_d> variable = @s in_dimension

execute if score <home> variable matches 1 run function pandamium:home/save/save_1
execute if score <home> variable matches 2 run function pandamium:home/save/save_2
execute if score <home> variable matches 3 run function pandamium:home/save/save_3
execute if score <home> variable matches 4 run function pandamium:home/save/save_4
execute if score <home> variable matches 5 run function pandamium:home/save/save_5
execute if score <home> variable matches 6 run function pandamium:home/save/save_6
execute if score <home> variable matches 7 run function pandamium:home/save/save_7
execute if score <home> variable matches 8 run function pandamium:home/save/save_8
execute if score <home> variable matches 9 run function pandamium:home/save/save_9
execute if score <home> variable matches 10 run function pandamium:home/save/save_10

execute if score <home_d> variable matches -1 run tellraw @s [{"text":"","color":"green"},{"text":"[Sethome]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in ",{"text":"The Nether","color":"aqua"},"!"]
execute if score <home_d> variable matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Sethome]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in ",{"text":"The Overworld","color":"aqua"},"!"]
execute if score <home_d> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Sethome]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in ",{"text":"The End","color":"aqua"},"!"]
execute if score <home_d> variable matches 2 run tellraw @s [{"text":"","color":"green"},{"text":"[Sethome]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in ",{"text":"The Staff World","color":"aqua"},"!"]
