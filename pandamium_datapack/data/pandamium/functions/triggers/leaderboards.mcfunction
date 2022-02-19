execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

execute if score @s gameplay_perms matches 6.. if score @s leaderboards matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Leaderboards","bold":true}," ========\n",[{"text":"1: ","color":"green"},{"text":"[Top Playtime]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Top Playtime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -1"}}],"  ",[{"text":"2: ","color":"green"},{"text":"[Top Votes]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Top Votes","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -2"}}],"\n",[{"text":"3: ","color":"green"},{"text":"[Monthly Playtime]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly Playtime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -3"}}],"  ",[{"text":"4: ","color":"green"},{"text":"[Monthly Votes]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly Votes","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -4"}}],"\n",[{"text":"5: ","color":"green"},{"text":"[Caves & Cliffs Parkour]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"blue"},{"text":"Caves & Cliffs Parkour","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -5"}}],"  ",[{"text":"6: ","color":"green"},{"text":"[Monstrosity Parkour]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"blue"},{"text":"Monstrosity Parkour","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -6"}}],"\n==============================="]

scoreboard players set <value> variable 0
scoreboard players operation <value> variable -= @s leaderboards

scoreboard players set <can_run> variable 0
execute store success score <same_sidebar> variable if score <value> variable = <sidebar> global 
execute if score @s gameplay_perms matches 6.. if score <value> variable matches 1..6 if score <same_sidebar> variable matches 0 run scoreboard players set <can_run> variable 1

execute if score <can_run> variable matches 1 if score <value> variable matches 1 run scoreboard objectives setdisplay sidebar playtime_hours
execute if score <can_run> variable matches 1 if score <value> variable matches 2 run scoreboard objectives setdisplay sidebar votes
execute if score <can_run> variable matches 1 if score <value> variable matches 3 run scoreboard objectives setdisplay sidebar monthly_playtime_hours
execute if score <can_run> variable matches 1 if score <value> variable matches 4 run scoreboard objectives setdisplay sidebar monthly_votes
execute if score <can_run> variable matches 1 if score <value> variable matches 5 run scoreboard objectives setdisplay sidebar parkour_1.leaderboard
execute if score <can_run> variable matches 1 if score <value> variable matches 6 run scoreboard objectives setdisplay sidebar parkour_2.leaderboard

execute if score <can_run> variable matches 1 run scoreboard players operation <sidebar> global = <value> variable
execute if score <can_run> variable matches 1 run scoreboard players set <sidebar_timer> global 600

execute if score <can_run> variable matches 1 if score <value> variable matches 1 run tellraw @a [{"text":"[Leaderboards]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," displayed the ",{"text":"Top Playtime","bold":true,"color":"blue"}," leaderboard for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score <can_run> variable matches 1 if score <value> variable matches 2 run tellraw @a [{"text":"[Leaderboards]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," displayed the ",{"text":"Top Votes","bold":true,"color":"blue"}," leaderboard for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score <can_run> variable matches 1 if score <value> variable matches 3 run tellraw @a [{"text":"[Leaderboards]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," displayed the ",{"text":"Monthly Playtime","bold":true,"color":"blue"}," leaderboard for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score <can_run> variable matches 1 if score <value> variable matches 4 run tellraw @a [{"text":"[Leaderboards]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," displayed the ",{"text":"Monthly Votes","bold":true,"color":"blue"}," leaderboard for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score <can_run> variable matches 1 if score <value> variable matches 5 run tellraw @a [{"text":"[Leaderboards]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," displayed the ",{"text":"Caves & Cliffs Parkour","bold":true,"color":"blue"}," leaderboard for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score <can_run> variable matches 1 if score <value> variable matches 6 run tellraw @a [{"text":"[Leaderboards]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," displayed the ",{"text":"Monstrosity Parkour","bold":true,"color":"blue"}," leaderboard for ",{"text":"30 seconds","color":"aqua"},"!"]]

execute if score @s gameplay_perms matches 6.. if score @s leaderboards matches ..-1 unless score <value> variable matches 1..6 run tellraw @s [{"text":"[Leaderboards]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s gameplay_perms matches 6.. if score @s leaderboards matches ..-1 if score <value> variable matches 1..6 if score <same_sidebar> variable matches 1 run tellraw @s [{"text":"[Leaderboards]","color":"dark_red"},{"text":" That leaderboard is already being shown on the sidebar!","color":"red"}]

scoreboard players reset @s leaderboards
scoreboard players enable @s leaderboards
