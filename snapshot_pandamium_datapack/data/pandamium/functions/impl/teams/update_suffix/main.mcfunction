function pandamium:impl/teams/init_arguments

function pandamium:utils/database/players/load/self
data modify storage pandamium:temp arguments.username set from storage pandamium.db:players selected.entry.username

execute if score @s monthly_votes >= <monthly_votes_leaderboard_highest_value> global run data modify storage pandamium:temp arguments.custom_suffix set value '{"text":"🜲","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"This player is at the top of a\\nmonthly leaderboard.","color":"gold"}}}'
execute if score @s monthly_playtime_ticks >= <monthly_playtime_leaderboard_highest_value> global run data modify storage pandamium:temp arguments.custom_suffix set value '{"text":"🜲","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"This player is at the top of a\\nmonthly leaderboard.","color":"gold"}}}'
data modify storage pandamium:temp arguments.custom_suffix set from storage pandamium.db:players selected.entry.data.custom_suffix
execute unless data storage pandamium:temp arguments{custom_suffix:'""'} run data modify storage pandamium:temp arguments.separator set value '" "'

execute unless score @s hidden matches 1.. if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run data modify storage pandamium:temp arguments.status_suffix set value '{"text":" [Idle]","color":"gray"}'
execute unless score @s hidden matches 1.. if score @s idle.time matches 1073741824.. run data modify storage pandamium:temp arguments.status_suffix set value '{"text":" [AFK]","color":"gray"}'
execute if score @s jailed matches 1.. run data modify storage pandamium:temp arguments.status_suffix set value '{"text":" [Jailed]","color":"red"}'

function pandamium:impl/teams/update_suffix with storage pandamium:temp arguments
