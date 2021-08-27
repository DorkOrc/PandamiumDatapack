scoreboard players set <has_run> variable 0
execute as @e[type=#item_frames,limit=1,sort=nearest,distance=..10,nbt={Item:{}}] store success score <has_run> variable run function pandamium:misc/item_frame_toggle 

execute if score <has_run> variable matches 0 run tellraw @s [{"text":"[Item Frame]","color":"dark_red"},{"text":" Could not find a filled item frame nearby!","color":"red"}]
execute if score <has_run> variable matches 1 run tellraw @s [{"text":"[Item Frame]","color":"dark_green"},{"text":" Toggled the visibility of the nearest filled item frame!","color":"green"}]

scoreboard players reset @s item_frame
scoreboard players enable @s item_frame
