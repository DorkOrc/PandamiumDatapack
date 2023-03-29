scoreboard players operation Players: sidebar = <player_count> global
scoreboard players operation MobCap: sidebar = <mob_limit> global

scoreboard players operation Mobs: sidebar = <mob_count> global
execute store result score Items: sidebar if entity @e[type=item]

schedule function pandamium:misc/sidebar 20t
