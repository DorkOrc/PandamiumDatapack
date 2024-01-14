scoreboard players operation <sidebar.player_count> sidebar = <player_count> global
scoreboard players operation <sidebar.mob_cap> sidebar = <mob_limit> global

scoreboard players operation <sidebar.mob_count> sidebar = <mob_count> global
execute store result score <sidebar.item_count> sidebar if entity @e[type=item]

execute if score <mob_count> global >= <mob_limit> global run scoreboard players display name <sidebar.mob_count> sidebar {"color":"dark_red","font":"minecraft:uniform","text":"Mobs:"}
execute if score <mob_count> global < <mob_limit> global run scoreboard players display name <sidebar.mob_count> sidebar {"color":"gray","font":"minecraft:uniform","text":"Mobs:"}


# restart countdown
execute unless score <seconds_until_restart> global matches 1..60 run return run scoreboard players reset <sidebar.restart_countdown> sidebar
execute store result storage pandamium:templates macro.seconds.seconds int 1 run scoreboard players get <seconds_until_restart> global
function pandamium:impl/sidebar/set_restart_name with storage pandamium:templates macro.seconds
