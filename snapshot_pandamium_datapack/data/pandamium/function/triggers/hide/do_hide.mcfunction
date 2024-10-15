# unequip the player's worn and held items
scoreboard players set <total_unequipped_items> variable 0
execute if items entity @s weapon.mainhand * run scoreboard players add <total_unequipped_items> variable 1
execute if items entity @s weapon.offhand * run scoreboard players add <total_unequipped_items> variable 1
execute if items entity @s armor.feet * run scoreboard players add <total_unequipped_items> variable 1
execute if items entity @s armor.legs * run scoreboard players add <total_unequipped_items> variable 1
execute if items entity @s armor.chest * run scoreboard players add <total_unequipped_items> variable 1
execute if items entity @s armor.head * run scoreboard players add <total_unequipped_items> variable 1
function pandamium:utils/unequip/worn_and_held_items

# set the player's [hidden] score
scoreboard players set @s hidden 1
scoreboard players set @s[gamemode=spectator] hidden 2
scoreboard players set @s[gamemode=creative] hidden 3

# apply invisibility
effect give @s invisibility 10 0 true

# put the player into flying mode
gamemode spectator
gamemode creative

# prevent entity collision and remove status from the player's team
function pandamium:player/teams/disable_collision
function pandamium:player/teams/remove_status

# store the player's current position as their [pre_hide_pos_*]
execute positioned as @s run function pandamium:utils/get/position
scoreboard players operation @s pre_hide_pos_x = <x> variable
scoreboard players operation @s pre_hide_pos_y = <y> variable
scoreboard players operation @s pre_hide_pos_z = <z> variable
execute at @s store result score @s pre_hide_pos_d run function pandamium:utils/get/dimension_id

execute unless score <total_unequipped_items> variable matches 1.. run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are now invisible and in creative mode!","color":"yellow"}]
execute if score <total_unequipped_items> variable matches 1 run tellraw @s [{"text":"[Hide]","color":"gold"},[{"text":" You are now invisible and in creative mode! Unequipped ","color":"yellow"},{"text":"1","bold":true,"color":"gold"}," item."]]
execute if score <total_unequipped_items> variable matches 2.. run tellraw @s [{"text":"[Hide]","color":"gold"},[{"text":" You are now invisible and in creative mode! Unequipped ","color":"yellow"},{"score":{"name":"<total_unequipped_items>","objective":"variable"},"bold":true,"color":"gold"}," items."]]
