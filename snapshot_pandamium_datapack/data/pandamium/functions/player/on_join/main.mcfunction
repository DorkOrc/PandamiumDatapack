function pandamium:impl/database/players/on_join/main

# reset leave_game detector
scoreboard players set @s detect.leave_game 0

# reset potential leaked tags or advancements
tag @s remove source
tag @s remove target
advancement revoke @s from pandamium:detect/root

# assign new ID if none is assigned
execute unless score @s id matches 1.. run function pandamium:player/id/update

# first join
execute unless score @s playtime_ticks matches 1.. run function pandamium:player/on_join/first_join

# update stats
function pandamium:player/ranks/update_perms
scoreboard players set @s idle.time -6000
function pandamium:misc/leaderboards/update_self/every_votes
function pandamium:player/update_tablist_value

# update custom effects
function pandamium:impl/custom_effects/update_all/main
execute if predicate pandamium:datetime/is_april_fools_day if dimension the_end run function pandamium:impl/custom_effects/add/main {name:"april_fools_day_2024"}

# create dynamic team
execute store result storage pandamium:templates macro.id__tablist_sort_index.id int 1 run scoreboard players get @s id
execute store result storage pandamium:templates macro.id__tablist_sort_index.tablist_sort_index int 1 run function pandamium:player/on_join/set_tablist_sort_index
function pandamium:player/on_join/create_and_join_own_team with storage pandamium:templates macro.id__tablist_sort_index
function pandamium:player/teams/update_base
function pandamium:player/teams/update_suffix

# event dates
execute if score <month> global matches 12 if score <day> global matches 25 run advancement grant @s only pandamium:pandamium/events/christmas
execute if score <month> global matches 12 if score <day> global matches 31 run advancement grant @s only pandamium:pandamium/events/new_years
execute if score <month> global matches 1 if score <day> global matches 1 run advancement grant @s only pandamium:pandamium/events/new_years

# data fixing and notices
execute if predicate pandamium:last_joined/before_spawn_region_update run function pandamium:player/on_join/fix_data/join_after_spawn_region_update
execute if predicate pandamium:last_joined/before_data_loss run function pandamium:player/on_join/print_data_loss_notice
execute if predicate pandamium:last_joined/before_rank_advancement_changes run function pandamium:player/on_join/fix_data/give_rank_advancements

# update last_joined timestamp
scoreboard players operation @s last_joined.year = <year> global
scoreboard players operation @s last_joined.month = <month> global
scoreboard players operation @s last_joined.day = <day> global
scoreboard players operation @s last_joined.hour = <hour> global

# on-join events
execute if entity @s[gamemode=spectator,scores={staff_perms=0}] run function pandamium:player/on_join/fix_trapped_spectators
execute if score @s on_join.take_items matches 1 run function pandamium:impl/auto_actions/actions/take_items/main
execute if score @s on_join.tp_to_spawn matches 1 run function pandamium:impl/auto_actions/actions/tp_to_spawn/main
execute if score @s on_join.reset_spawnpoint matches 1 run function pandamium:impl/auto_actions/actions/reset_spawnpoint/main

# messages
execute if score @s jailed matches 1.. store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
execute if score @s jailed matches 1.. run function pandamium:player/on_join/print_still_unjailed with storage pandamium:templates macro.id
execute if score <unread_auto_actions> global matches 1.. if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Staff Info]","color":"dark_gray"},[{"text":" There are ","color":"gray"},{"score":{"name":"<unread_auto_actions>","objective":"global"},"bold":true}," unread auto-action",{"text":"s","color":"gray"},"! "],{"text":"[🖂]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger auto_actions_log"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to see the ","color":"blue"},{"text":"Auto-Actions Log","bold":true}]}}]
execute if score <anti_bot_mode> global matches 1 if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Staff Info] ","color":"dark_gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to open the ","color":"yellow"},{"text":"Options Menu","bold":true}," to toggle ",{"text":"Anti-Bot Mode","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options"}},{"text":"Anti-Bot Mode","bold":true,"color":"gray"},{"text":" is enabled!","color":"gray"}]

execute if score @s offline_votes matches 1.. run tellraw @s [{"text":"[Private Info] ","color":"dark_gray"},[{"text":"You voted ","color":"gray"},{"score":{"name":"@s","objective":"offline_votes"},"color":"aqua"}," times while offline."]]
scoreboard players reset @s offline_votes

# fix/migrate data
execute if score @s active_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s active_particles 0
execute if score @s death_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s death_particles 0

# reset session-specific data
scoreboard players reset @s online_ticks
scoreboard players reset @s tpa_request.sender_id
scoreboard players reset @s tpa_request.time
scoreboard players reset @s selected_player
scoreboard players reset @s selected_block.x
scoreboard players reset @s selected_block.y
scoreboard players reset @s selected_block.z

# enable triggers
function pandamium:player/enable_triggers

# set option defaults
scoreboard players add @s optn.disable_dynamic_triggers.tpa_names 0
scoreboard players add @s optn.disable_dynamic_triggers.home_names 0
scoreboard players add @s optn.disable_dynamic_triggers.punishments 0
scoreboard players add @s optn.disable_dynamic_triggers.player_info 0
scoreboard players add @s optn.disable_phantom_spawning 0
scoreboard players add @s optn.parkour.restart_on_fall 0
scoreboard players add @s optn.disable_receiving_mail 0

# update spawnpoint (in case the player changed their name)
function pandamium:impl/spawnpoint/check_existence
