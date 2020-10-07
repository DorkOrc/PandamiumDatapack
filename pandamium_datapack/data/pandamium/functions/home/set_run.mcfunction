execute store result score @s temp_1 run data get entity @s Pos[0]
execute store result score @s temp_2 run data get entity @s Pos[1]
execute store result score @s temp_3 run data get entity @s Pos[2]
scoreboard players set @s temp_4 0
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s temp_4 -1
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s temp_4 1

execute if score @s sethome matches 1 run function pandamium:home/save_1
execute if score @s sethome matches 2 run function pandamium:home/save_2
execute if score @s sethome matches 3 run function pandamium:home/save_3
execute if score @s sethome matches 4 run function pandamium:home/save_4
execute if score @s sethome matches 5 run function pandamium:home/save_5
execute if score @s sethome matches 6 run function pandamium:home/save_6
execute if score @s sethome matches 7 run function pandamium:home/save_7
execute if score @s sethome matches 8 run function pandamium:home/save_8
execute if score @s sethome matches 9 run function pandamium:home/save_9
execute if score @s sethome matches 10 run function pandamium:home/save_10

execute if score @s temp_4 matches -1 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Successfully set ",{"text":"home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"},"color":"aqua"}," at ",{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"temp_3"},"color":"aqua"}," in the ",{"text":"Nether","color":"aqua"},"."]
execute if score @s temp_4 matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Successfully set ",{"text":"home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"},"color":"aqua"}," at ",{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"temp_3"},"color":"aqua"}," in the ",{"text":"Overworld","color":"aqua"},"."]
execute if score @s temp_4 matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Successfully set ",{"text":"home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"},"color":"aqua"}," at ",{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"temp_3"},"color":"aqua"}," in the ",{"text":"End","color":"aqua"},"."]
