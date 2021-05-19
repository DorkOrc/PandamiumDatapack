execute store success score <toggle_gamemode> variable if entity @s[gamemode=!spectator]

scoreboard players set <can_toggle_spectator> variable 0
execute if score @s staff_perms matches 2.. run scoreboard players set <can_toggle_spectator> variable 1
tag @s add running_trigger
execute if entity @p[tag=running_trigger,x=-512,y=-256,z=-512,dx=1024,dy=1280,dz=1024] run scoreboard players set <can_toggle_spectator> variable 1
execute in the_nether if entity @p[tag=running_trigger,x=-512,y=-256,z=-512,dx=1024,dy=1280,dz=1024] run scoreboard players set <can_toggle_spectator> variable 1
execute in pandamium:staff_world if entity @p[tag=running_trigger,x=0] run scoreboard players set <can_toggle_spectator> variable 1
tag @s remove running_trigger

execute if score <can_toggle_spectator> variable matches 1 if score <toggle_gamemode> variable matches 0 run gamemode survival
execute if score <can_toggle_spectator> variable matches 1 if score <toggle_gamemode> variable matches 0 run effect clear @s night_vision
execute if score <can_toggle_spectator> variable matches 1 if score <toggle_gamemode> variable matches 1 run gamemode spectator
execute if score <can_toggle_spectator> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Helpers can only use spectator mode at spawn and in the staff world!","color":"red"}]

scoreboard players reset @s toggle_spectator
scoreboard players enable @s toggle_spectator
