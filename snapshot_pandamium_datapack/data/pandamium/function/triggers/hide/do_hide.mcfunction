scoreboard players set @s hidden 1
scoreboard players set @s[gamemode=spectator] hidden 2
scoreboard players set @s[gamemode=creative] hidden 3
effect give @s invisibility 10 0 true

# put into flying mode
gamemode spectator
gamemode creative

# prevent entity collision
function pandamium:player/teams/disable_collision
function pandamium:player/teams/remove_status

execute if score <total_equipped_items> variable matches 1.. run function pandamium:utils/unequip/armour_and_hands

execute positioned as @s run function pandamium:utils/get/position
scoreboard players operation @s pre_hide_pos_x = <x> variable
scoreboard players operation @s pre_hide_pos_y = <y> variable
scoreboard players operation @s pre_hide_pos_z = <z> variable
execute at @s store result score @s pre_hide_pos_d run function pandamium:utils/get/dimension_id

execute if score <total_equipped_items> variable matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Hide]","color":"gold"},[{"text":" You are now invisible and in creative mode! Unequipped ","color":"yellow"},{"score":{"name":"<total_equipped_items>","objective":"variable"},"bold":true,"color":"gold"}," item",{"text":"(s)","color":"gray"},"."]]
execute unless score <total_equipped_items> variable matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are now invisible and in creative mode!","color":"yellow"}]
