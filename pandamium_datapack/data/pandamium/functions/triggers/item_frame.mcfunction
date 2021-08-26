scoreboard players set <has_run> variable 0
execute as @e[type=#item_frames,limit=1,sort=nearest,distance=..10,nbt={Item:{Count:1b}}] run function pandamium:misc/item_frame_toggle
execute store success score <state> variable if data entity @s {Invisible:1b} run execute if score <state> variable matches 0 run data merge entity @s {Invisible:1b,Invulnerable:1b}
execute if score <state> variable matches 1 run data merge entity @s {Invisible:0b,Invulnerable:0b}
scoreboard players set <has_run> variable 1 

execute if score <has_run> variable matches 0 run tellraw @s [{"text":"[Item Frame]","color":"dark_red"},{"text":" Could not find a filled item frame nearby!","color":"red"}]
execute if score <has_run> variable matches 1 run tellraw @s [{"text":"[Item Frame]","color":"dark_green"},{"text":" Toggled visibility of the nearest filled item frame!","color":"green"}]

scoreboard players reset @s item_frame
scoreboard players enable @s item_frame