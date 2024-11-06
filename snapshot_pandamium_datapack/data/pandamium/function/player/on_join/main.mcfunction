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
execute store result score @s transient_equippable.items_equipped if items entity @s armor.* *[custom_data~{pandamium:{transient_equippable:{}}}]
execute if score @s transient_equippable.items_equipped matches 0 run scoreboard players set @s transient_equippable.time_since_worn 100

# update custom effects
function pandamium:impl/custom_effects/update_all/main

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
execute if predicate pandamium:last_joined/before_stackable_shulker_boxes_datapack run function dorkorc.stackable_shulker_boxes:update_enderchest
execute if predicate pandamium:last_joined/before_spawn_region_update run function pandamium:player/on_join/fix_data/join_after_spawn_region_update
execute if predicate pandamium:last_joined/before_rank_advancement_changes run function pandamium:player/on_join/fix_data/give_rank_advancements
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:inverted",term:{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.year:{min:2024}}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.year:2024,last_joined.month:{max:10}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.year:2024,last_joined.month:11,last_joined.day:{max:5}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.year:2024,last_joined.month:11,last_joined.day:6,last_joined.hour:{max:23}}}]} run function pandamium:player/on_join/fix_data/fix_bedrock_breakers

execute if score <month> global matches 6 if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:inverted",term:{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.year:{min:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"<year>"},score:"global"}}}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.month:{max:5}}}]} run function pandamium:player/on_join/notices/pride_month
execute if score <month> global matches 10 if score <month> global matches 31 if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:inverted",term:{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.year:{min:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"<year>"},score:"global"}}}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.month:{max:9}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.month:10,last_joined.day:{max:30}}}]} run tellraw @s [{"text":"[Pandamium] ","color":"blue"},{"text":"Happy Halloween!","color":"gold","shadow_color":[1,0,0,0.5]},{"text":" 🎃","color":"#FF7F00"},{"text":" 🦇","color":"black"}]
execute if score <month> global matches 12 if score <month> global matches 25 if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:inverted",term:{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.year:{min:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"<year>"},score:"global"}}}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.month:{max:11}}},{condition:"minecraft:entity_scores",entity:"this",scores:{last_joined.month:12,last_joined.day:{max:24}}}]} run tellraw @s [{"text":"[Pandamium] ","color":"blue"},{"text":"Merry Christmas!","color":"aqua","shadow_color":[0,1,1,0.5]},{"text":" 🎁","color":"#FF7FFF"},{"text":" 🎄","color":"dark_green"}]

execute if data storage pandamium.db.mail:data news_feed_inbox[0] run function pandamium:player/on_join/check_news
execute if predicate {condition: "minecraft:any_of",terms: [{condition: "minecraft:inverted",term: {condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.year: {min: 2024}}}},{condition: "minecraft:all_of",terms: [{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.year: 2024}},{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.month: {max: 9}}}]},{condition: "minecraft:all_of",terms: [{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.year: 2024}},{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.month: 10}},{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.day: {max: 21}}}]},{condition: "minecraft:all_of",terms: [{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.year: 2024}},{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.month: 10}},{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.day: 22}},{condition: "minecraft:entity_scores",entity: "this",scores: {last_joined.hour: {max: 0}}}]}]} run function pandamium:player/on_join/notices/22_10_2024_data_loss

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
execute if score @s jailed matches 1.. run function pandamium:player/on_join/print_still_jailed with storage pandamium:templates macro.id
execute if score <unread_auto_actions> global matches 1.. if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Staff Info]","color":"dark_gray"},[{"text":" There are ","color":"gray"},{"score":{"name":"<unread_auto_actions>","objective":"global"},"bold":true}," unread auto-action",{"text":"s","color":"gray"},"! "],{"text":"[🖂]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger auto_actions_log"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to see the ","color":"blue"},{"text":"Auto-Actions Log","bold":true}]}}]
execute if score <anti_bot_mode> global matches 1 if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Staff Info] ","color":"dark_gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to open the ","color":"yellow"},{"text":"Options Menu","bold":true}," to toggle ",{"text":"Anti-Bot Mode","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options"}},{"text":"Anti-Bot Mode","bold":true,"color":"gray"},{"text":" is enabled!","color":"gray"}]

execute if score @s offline_votes matches 1.. run tellraw @s [{"text":"[Private Info] ","color":"dark_gray"},[{"text":"You voted ","color":"gray"},{"score":{"name":"@s","objective":"offline_votes"},"color":"aqua"}," times while offline."]]
scoreboard players reset @s offline_votes

execute if score @s staff_perms matches 1.. store result score <unread_staff_mails> variable if data storage pandamium.db.mail:data staff_inbox[{unread:1b}]
execute if score @s staff_perms matches 1.. store success score <unclaimed_items_in_staff_mails> variable if data storage pandamium.db.mail:data staff_inbox[{has_unclaimed_items:1b}]
execute if score @s staff_perms matches 1.. if score <unread_staff_mails> variable matches 1.. run tellraw @s [{"text":"[Mail]","color":"blue"},[{"text":" There is unread mail in the staff team's inbox! ","color":"green"},{"text":"[View Staff Team Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"The Staff Team's Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000008"}}]]
execute if score @s staff_perms matches 1.. if score <unread_staff_mails> variable matches 1.. at @s run playsound block.note_block.chime master @s
execute if score @s staff_perms matches 1.. if score <unread_staff_mails> variable matches 0 if score <unclaimed_items_in_staff_mails> variable matches 1.. run tellraw @s [{"text":"[Mail]","color":"blue"},[{"text":" There are unclaimed items in the staff team's inbox! ","color":"green"},{"text":"[View Staff Team Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"The Staff Team's Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000008"}}]]

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
scoreboard players add @s optn.enable_dynamic_triggers.mail_names 0
scoreboard players add @s optn.disable_dynamic_triggers.punishments 0
scoreboard players add @s optn.disable_dynamic_triggers.player_info 0
scoreboard players add @s optn.disable_dynamic_triggers.tp 0
scoreboard players add @s optn.disable_phantom_spawning 0
scoreboard players add @s optn.parkour.restart_on_fall 0
scoreboard players add @s optn.disable_receiving_mail 0
scoreboard players add @s optn.experimental.speed_hack_indicator 0
scoreboard players add @s optn.enable_mini_block_help_trigger 0
scoreboard players add @s optn.disable_spectator_portals 0

scoreboard players set @s mail_data.inbox_tab 0

# update spawnpoint (in case the player changed their name)
function pandamium:impl/spawnpoint/check_existence
