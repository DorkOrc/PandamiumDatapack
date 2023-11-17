scoreboard players operation <sidebar.player_count> sidebar = <player_count> global
scoreboard players operation <sidebar.mob_cap> sidebar = <mob_limit> global

scoreboard players operation <sidebar.mob_count> sidebar = <mob_count> global
execute store result score <sidebar.item_count> sidebar if entity @e[type=item]
