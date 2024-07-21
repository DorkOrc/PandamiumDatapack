scoreboard players set @s switch_dimension -1
execute if dimension the_nether run scoreboard players set @s switch_dimension -2
function pandamium:triggers/switch_dimension/main

execute at @s store success score <near_nether_portal> variable store result score <distance> variable run locate poi minecraft:nether_portal
execute if score <near_nether_portal> variable matches 1 run tellraw @s [{"text":"The nearest nether portal is ","color":"green"},{"score":{"name":"<distance>","objective":"variable"},"color":"aqua"}," blocks away."]
