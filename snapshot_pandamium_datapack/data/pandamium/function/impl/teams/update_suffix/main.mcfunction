function pandamium:impl/teams/init_arguments
execute store result storage pandamium:temp arguments.id int 1 run scoreboard players get @s id
execute store result storage pandamium:temp arguments.tablist_sort_index int 1 run scoreboard players get @s tablist_sort_index

function pandamium:utils/database/players/load/self

execute if predicate pandamium:can_have_flair if data storage pandamium.db.players:io selected.entry.data.flair in pandamium:staff_world run function pandamium:impl/teams/update_suffix/set_flair

execute if predicate pandamium:at_the_top_of_a_leaderboard unless score @s hide_trophy_suffix matches 1 run data modify storage pandamium:temp arguments.suffix_crown set value '[" ",{"text":"🏆","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"This player is at the top of a\\nmonthly leaderboard.","color":"gold"}}}]'

execute unless score @s hidden matches 1.. if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run data modify storage pandamium:temp arguments.suffix_status set value '{"text":" [Idle]","color":"gray"}'
execute unless score @s hidden matches 1.. if score @s idle.time matches 1073741824.. run data modify storage pandamium:temp arguments.suffix_status set value '{"text":" [AFK]","color":"gray"}'

function pandamium:impl/teams/update_suffix with storage pandamium:temp arguments
