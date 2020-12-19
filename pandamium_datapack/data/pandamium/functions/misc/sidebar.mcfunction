scoreboard players operation Players: sidebar = <player_count> variable
execute store result score Entities: sidebar run execute if entity @e[type=!#pandamium:mob_limit_excluded]
execute store result score Items: sidebar run execute if entity @e[type=item]

execute if score <mob_count> variable < <mob_limit> variable run team join gray_color Entities:
execute unless score <mob_count> variable < <mob_limit> variable run team join red_color Entities:

schedule function pandamium:misc/sidebar 20t
