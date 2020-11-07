scoreboard players set <toggle_gamemode> variable 0
execute if entity @s[gamemode=!spectator] run scoreboard players set <toggle_gamemode> variable 1

execute unless score @s staff_perms matches 2.. unless entity @s[x=-512,y=-256,z=-512,dx=1024,dy=1280,dz=1024] run scoreboard players set <toggle_gamemode> variable 0
execute unless score @s staff_perms matches 2.. unless entity @s[x=-512,y=-256,z=-512,dx=1024,dy=1280,dz=1024] run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," Helpers can only use this trigger at spawn."]

scoreboard players set <can_toggle_spectator> variable 0
execute if score @s staff_perms matches 2.. run scoreboard players set <can_toggle_spectator> variable 1
execute unless score @s staff_perms matches 2.. if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set <can_toggle_spectator> variable 1
execute unless score @s staff_perms matches 2.. if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set <can_toggle_spectator> variable 1

execute if score <can_toggle_spectator> variable matches 1 if score <toggle_gamemode> variable matches 0 run gamemode survival @s
execute if score <can_toggle_spectator> variable matches 1 if score <toggle_gamemode> variable matches 1 run gamemode spectator @s
execute unless score <can_toggle_spectator> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," You cannot use this trigger here."]

scoreboard players reset @s toggle_spectator
scoreboard players enable @s toggle_spectator
