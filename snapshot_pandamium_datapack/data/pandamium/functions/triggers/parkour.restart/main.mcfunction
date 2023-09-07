execute if score @s parkour.restart matches 1.. if score @s parkour.checkpoint matches 0..99 run scoreboard players set @s parkour.restart -101
execute if score @s parkour.restart matches 1.. if score @s parkour.checkpoint matches 100 run scoreboard players set @s parkour.restart -101
execute if score @s parkour.restart matches 1.. if score @s parkour.checkpoint matches 101..199 run tellraw @s [{"text":"[Parkour] ","color":"dark_red"},[{"text":"Are you sure you want to ","color":"red"},{"text":"reset all progress","underlined":true}," for Monstrosity Parkour? "],{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger parkour.restart set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"reset all progress","bold":true}," for Monstrosity Parkour"]}}]

execute if score @s parkour.restart matches -101 if score @s parkour.checkpoint matches 0..99 run function pandamium:impl/parkour/parkour_1/restart
execute if score @s parkour.restart matches -101 if score @s parkour.checkpoint matches 0..99 run tellraw @s [{"text":"[Parkour] ","color":"dark_green"},[{"text":"Restarted the ","color":"green"},{"text":"Caves & Cliffs Parkour","color":"aqua"},"!"]]

execute if score @s parkour.restart matches -101 if score @s parkour.checkpoint matches 100..199 run function pandamium:impl/parkour/parkour_2/progress/restart
execute if score @s parkour.restart matches -101 if score @s parkour.checkpoint matches 100..199 run tellraw @s [{"text":"[Parkour] ","color":"dark_green"},[{"text":"Restart the ","color":"green"},{"text":"Monstrosity Parkour","color":"aqua"},"! Progress was ",{"text":"reset","color":"aqua"},"."]]

#

scoreboard players reset @s parkour.restart
scoreboard players enable @s parkour.restart
