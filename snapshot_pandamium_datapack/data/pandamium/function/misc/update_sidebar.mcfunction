scoreboard players operation <sidebar.player_count> sidebar = <player_count> global
scoreboard players operation <sidebar.mob_cap> sidebar = <mob_limit> global

scoreboard players operation <sidebar.mob_count> sidebar = <mob_count> global
execute store result score <sidebar.item_count> sidebar if entity @e[type=item]

execute if score <mob_count> global >= <mob_limit> global run scoreboard players display name <sidebar.mob_count> sidebar {"color":"dark_red","font":"minecraft:uniform","text":"Mobs:"}
execute if score <mob_count> global < <mob_limit> global run scoreboard players display name <sidebar.mob_count> sidebar {"color":"gray","font":"minecraft:uniform","text":"Mobs:"}

# dev mode indicator
execute unless score <dev_environment> global matches 1 run scoreboard players reset <sidebar.dev_mode> sidebar
execute if score <dev_environment> global matches 1 run scoreboard players display name <sidebar.dev_mode> sidebar {"color":"dark_purple","font":"minecraft:uniform","text":"In Dev Mode"}
execute if score <dev_environment> global matches 1 run scoreboard players display numberformat <sidebar.dev_mode> sidebar fixed ""
execute if score <dev_environment> global matches 1 run scoreboard players set <sidebar.dev_mode> sidebar -2147483647

# restart countdown
execute unless score <seconds_until_restart> global matches 1.. run return run scoreboard players reset <sidebar.restart_countdown> sidebar

execute store result score <sidebar_minutes> variable run scoreboard players operation <sidebar_seconds> variable = <seconds_until_restart> global
execute store result storage pandamium:templates macro.seconds__minutes.seconds int 1 run scoreboard players operation <sidebar_seconds> variable %= #seconds_per_minute constant
execute store result storage pandamium:templates macro.seconds__minutes.minutes int 1 run scoreboard players operation <sidebar_minutes> variable /= #seconds_per_minute constant
function pandamium:impl/sidebar/set_restart_name with storage pandamium:templates macro.seconds__minutes
