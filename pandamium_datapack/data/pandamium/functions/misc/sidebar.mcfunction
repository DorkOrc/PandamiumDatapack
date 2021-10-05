scoreboard players operation Players: sidebar = <player_count> variable
scoreboard players operation MobCap: sidebar = <mob_limit> global

execute store result score Mobs: sidebar if entity @e[type=!#pandamium:mob_limit_excluded]
execute store result score Items: sidebar if entity @e[type=item]

schedule function pandamium:misc/sidebar 20t
