# check if they are actually in a course
execute unless score @s parkour.checkpoint matches 0.. run return run tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" You are not currently running a parkour course!","color":"red"}]

# get course number
execute store result score <course> variable run scoreboard players get @s parkour.checkpoint
scoreboard players operation <course> variable /= #100 constant
scoreboard players add <course> variable 1

# confirmation
execute if score @s parkour.restart matches 1.. if score @s parkour.checkpoint matches 201..299 run return run tellraw @s [{"text":"[Parkour]","color":"dark_red"},[{"text":" Are you sure you want to ","color":"red"},{"text":"reset all progress","underlined":true}," for this run of the ",{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"color":"aqua"}," parkour course? "],{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger parkour.restart set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"reset all progress","bold":true}," for this run of the ",{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"bold":true}," parkour course"]}}]

# do restart
execute unless score @s parkour.restart matches 1.. unless score @s parkour.restart matches -101 run return run tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <course> variable matches 3 run tellraw @s [{"text":"[Parkour] ","color":"dark_green"},[{"text":"Restarted the ","color":"green"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"color":"aqua"}," parkour course!"]]
execute if score <course> variable matches 3 run return run function pandamium:impl/parkour/parkour_3/restart

# else
tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
