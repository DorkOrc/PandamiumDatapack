function pandamium:impl/teams/init_arguments

function pandamium:utils/database/players/load/self
data modify storage pandamium:temp arguments.username set from storage pandamium.db:players selected.entry.username

data modify storage pandamium:temp arguments.suffix_flair set from storage pandamium.db:players selected.entry.data.flair
execute unless data storage pandamium:temp arguments{suffix_flair:'""'} run data modify storage pandamium:temp arguments.suffix_flair_separator set value '" "'

execute unless score @s hide_trophy_suffix matches 1 if score @s monthly_votes >= <monthly_votes_leaderboard_highest_value> global run data modify storage pandamium:temp arguments.suffix_crown set value '[" ",{"text":"🜲","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"This player is at the top of a\\nmonthly leaderboard.","color":"gold"}}}]'
execute unless score @s hide_trophy_suffix matches 1 if score @s monthly_playtime_ticks >= <monthly_playtime_leaderboard_highest_value> global run data modify storage pandamium:temp arguments.suffix_crown set value '[" ",{"text":"🜲","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"This player is at the top of a\\nmonthly leaderboard.","color":"gold"}}}]'

execute unless score @s hidden matches 1.. if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run data modify storage pandamium:temp arguments.suffix_status set value '{"text":" [Idle]","color":"gray"}'
execute unless score @s hidden matches 1.. if score @s idle.time matches 1073741824.. run data modify storage pandamium:temp arguments.suffix_status set value '{"text":" [AFK]","color":"gray"}'

function pandamium:impl/teams/update_suffix with storage pandamium:temp arguments
