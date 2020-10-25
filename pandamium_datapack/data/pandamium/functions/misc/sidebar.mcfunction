scoreboard players operation Players: sidebar = <player_count> variable
execute store result score Entities: sidebar run execute if entity @e[type=!item,type=!item_frame,type=!painting,type=!armor_stand]
execute store result score Items: sidebar run execute if entity @e[type=item]

schedule function pandamium:misc/sidebar 20t
