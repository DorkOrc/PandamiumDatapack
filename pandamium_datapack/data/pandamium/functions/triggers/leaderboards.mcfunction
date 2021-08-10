execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message

execute if score @s gameplay_perms matches 6.. if score @s leaderboards matches 1.. run tellraw @s ["",{"text":"Leaderboards!","bold":true,"color":"aqua"},"\n",[{"text":"1: ","color":"green"},{"text":"[Top Playtime]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Top Playtime","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -1"}}],"\n",[{"text":"2: ","color":"green"},{"text":"[Top Votes]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Top Votes","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -2"}}],"\n",[{"text":"3: ","color":"green"},{"text":"[Monthly Playtime]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Monthly Playtime","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -3"}}],"\n",[{"text":"4: ","color":"green"},{"text":"[Monthly Votes]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Monthly Votes","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -4"}}]]

execute if score @s gameplay_perms matches 6.. if score @s leaderboards matches -4..-1 run scoreboard players operation <check_sidebar> temp = <sidebar> variable
execute if score @s gameplay_perms matches 6.. if score @s leaderboards matches -4..-1 run scoreboard players operation <check_sidebar> temp *= <-1> variable
execute if score @s gameplay_perms matches 6.. store success score <can_run> temp unless score @s leaderboards = <check_sidebar> temp

execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -1 run scoreboard objectives setdisplay sidebar playtime_hours
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -2 run scoreboard objectives setdisplay sidebar votes
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -3 run scoreboard objectives setdisplay sidebar monthly_playtime
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -4 run scoreboard objectives setdisplay sidebar monthly_votes

execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -4..-1 run scoreboard players set <sidebar> variable 0
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -4..-1 run scoreboard players operation <sidebar> variable -= @s leaderboards
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -4..-1 run scoreboard players set <sidebar_timer> variable 600

execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -1 run tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," toggled ",{"text":"Top Playtime","bold":true,"color":"blue"}," for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -2 run tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," toggled ",{"text":"Top Votes","bold":true,"color":"blue"}," for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -3 run tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," toggled ",{"text":"Monthly Playtime","bold":true,"color":"blue"}," for ",{"text":"30 seconds","color":"aqua"},"!"]]
execute if score @s gameplay_perms matches 6.. if score <can_run> temp matches 1 if score @s leaderboards matches -4 run tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," toggled ",{"text":"Monthly Votes","bold":true,"color":"blue"}," for ",{"text":"30 seconds","color":"aqua"},"!"]]

execute if score @s gameplay_perms matches 6.. unless score <can_run> temp matches 1 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" This leaderboard is already being shown on the sidebar!","color":"red"}]

scoreboard players reset @s leaderboards
scoreboard players enable @s leaderboards
