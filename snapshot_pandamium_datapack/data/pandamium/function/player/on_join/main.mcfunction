function pandamium:impl/database/players/on_join/main

# reset leave_game detector
scoreboard players set @s detect.leave_game 0

# reset potential leaked tags, scores, or advancements
tag @s remove source
tag @s remove target
advancement revoke @s from pandamium:detect/root
scoreboard players reset @s detect.die

# assign new ID if none is assigned
execute unless score @s id matches 1.. run function pandamium:player/id/update

# first join
scoreboard players set <prevent_old_player_notices> variable 0
execute if score @s playtime_ticks matches 1..6000 run function pandamium:player/on_join/print_welcome
execute store success score <first_join> variable unless score @s playtime_ticks matches 1..
execute if score <first_join> variable matches 1 run function pandamium:player/on_join/first_join

execute if score @s last_joined.datetime matches ..832446000 run dialog show @s pandamium:new_snapshot_news

# set waypoint transmission restrictions
attribute @s minecraft:waypoint_transmit_range base set 100
attribute @s minecraft:waypoint_receive_range base set 100

# update stats
tag @s add this
execute store success score @s alive if entity @e[type=player,tag=this,limit=1]
tag @s remove this

function pandamium:player/ranks/update_perms
scoreboard players set @s idle.time -6000
function pandamium:misc/leaderboards/update_self/every_votes
function pandamium:player/update_tablist_value
execute store result score @s transient_equippable.items_equipped if items entity @s armor.* *[custom_data~{pandamium:{transient_equippable:{}}}]
execute if score @s transient_equippable.items_equipped matches 0 run scoreboard players set @s transient_equippable.time_since_worn 100
execute if score @s custom_dye.type matches 1.. unless score @s custom_dye.off matches 1 run function pandamium:detect/trigger_custom_dye/main
execute store success score @s sneak_to_sit.sneaking_state if predicate pandamium:sneaking
execute if predicate pandamium:riding_entity run scoreboard players set @s sneak_to_sit.sneaking_state 2

# update custom effects
function pandamium:impl/custom_effects/update_all/main

# create dynamic team
execute store result storage pandamium:templates macro.id__tablist_sort_index.id int 1 run scoreboard players get @s id
execute store result storage pandamium:templates macro.id__tablist_sort_index.tablist_sort_index int 1 run function pandamium:player/on_join/set_tablist_sort_index
function pandamium:player/on_join/create_and_join_own_team with storage pandamium:templates macro.id__tablist_sort_index
execute unless predicate pandamium:player/is_vanished run function pandamium:player/teams/update_base
execute unless predicate pandamium:player/is_vanished run function pandamium:player/teams/update_suffix

# sync time_since_rest
execute store result score @s time_since_rest run function pandamium:utils/get/statistic {type:"custom",stat:"time_since_rest"}

# sync play_time statistic (in case of roll-backs)
execute store result score <play_time_statistic> variable store result score <diff> variable run function pandamium:utils/get/statistic {type:"minecraft:custom",stat:"minecraft:play_time"}
execute unless score @s last_joined.datetime matches 816134400.. unless score @s play_time_before_adjustment >= @s playtime_ticks run scoreboard players operation @s play_time_before_adjustment = @s playtime_ticks
scoreboard players operation <diff> variable -= @s play_time_before_adjustment
execute if score <diff> variable matches ..-1 run scoreboard players set <diff> variable 0
execute if score <diff> variable matches 36001.. run scoreboard players set <diff> variable 36000
execute if score <diff> variable matches 1.. run function pandamium:utils/log {args:{message:[{text:"Increased "},{selector:"@s"},{text:"'s play time scores by "},{score:{name:"<diff>",objective:"variable"}},{text:" ticks after syncing [custom:play_time] statistic"}]}}
execute if score <diff> variable matches 1.. run scoreboard players operation @s play_time_before_adjustment > <play_time_statistic> variable
execute if score <diff> variable matches 1.. if score @s last_joined.datetime matches 816134400.. run scoreboard players operation @s playtime_ticks += <diff> variable
execute if score <diff> variable matches 1.. if score @s last_joined.datetime matches 816134400.. run scoreboard players operation @s monthly_playtime_ticks += <diff> variable
execute if score <diff> variable matches 1.. if score @s last_joined.datetime matches 816134400.. run scoreboard players operation @s yearly_playtime_ticks += <diff> variable
function pandamium:player/on_join/fix_data/give_rank_advancements
schedule function pandamium:impl/leader_boards/update_online_playtime_leader_board_places 1t

# data fixing and notices
execute unless score <prevent_old_player_notices> variable matches 1 if predicate pandamium:last_joined/before_stackable_shulker_boxes_datapack run function stackable_shulker_boxes:update_enderchest
execute unless score <prevent_old_player_notices> variable matches 1 if predicate pandamium:last_joined/before_spawn_region_update run function pandamium:player/on_join/fix_data/join_after_spawn_region_update
execute unless score <prevent_old_player_notices> variable matches 1 if score @s last_joined.datetime matches ..798681599 run function pandamium:player/on_join/fix_data/fix_bedrock_breakers

# annual notices
#relative_datetime = ((((lj_month-1)*31+lj_day-1)*24+lj_hour)*60+lj_minute)*60+lj_second - (32140800*(current_year-2000))
scoreboard players operation <last_joined_offset> variable = <year> global
scoreboard players remove <last_joined_offset> variable 2000
scoreboard players operation <last_joined_offset> variable *= #32140800 constant
scoreboard players operation <last_joined_relative_datetime> variable = @s last_joined.datetime
scoreboard players operation <last_joined_relative_datetime> variable -= <last_joined_offset> variable

execute if score <month> global matches 6 if score <last_joined_relative_datetime> variable matches ..13391999 run function pandamium:player/on_join/notices/pride_month

execute if score <month> global matches 10 if score <day> global matches 31 if score <last_joined_relative_datetime> variable matches ..26697599 run tellraw @s [{text:"[Pandamium] ",color:"blue"},{text:"Happy Halloween!",color:"gold",shadow_color:[1.0f,0.0f,0.0f,0.5f]},{text:" 🎃",color:"#FF7F00"},{text:" 🦇",color:"black"}]
execute if score <month> global matches 10 if score <day> global matches 31 if score <last_joined_relative_datetime> variable matches ..26697599 run function pandamium:player/on_join/equip_item_to_head {item:'jack_o_lantern'}

execute if score <month> global matches 11 if score <day> global matches 11 if score <last_joined_relative_datetime> variable matches ..27647999 run function pandamium:player/on_join/equip_item_to_head {item:'poppy[item_name="Remembrance Day Poppy",equippable={slot:"head"},rarity="uncommon"]'}

execute if score <month> global matches 12 if score <day> global matches 25 run advancement grant @s only pandamium:pandamium/events/christmas
execute if score <month> global matches 12 if score <day> global matches 25 if score <last_joined_relative_datetime> variable matches ..31535999 run tellraw @s [{text:"[Pandamium] ",color:"blue"},{text:"Merry Christmas!",color:"dark_green",shadow_color:[0.75f,0.0f,0.0f,1.0f]},{text:" 🎁",color:"#FF7FFF"},{text:" 🎄",color:"dark_green"}]
execute if score <month> global matches 12 if score <day> global matches 25..26 if score <last_joined_relative_datetime> variable matches ..31535999 run loot give @s loot pandamium:items/heads/presents/christmas

execute if score <month> global matches 12 if score <day> global matches 31 run advancement grant @s only pandamium:pandamium/events/new_years
execute if score <month> global matches 1 if score <day> global matches 1 run advancement grant @s only pandamium:pandamium/events/new_years
execute if score <month> global matches 1 if score <day> global matches 1..7 if score <last_joined_relative_datetime> variable matches ..-1 run tellraw @s [{text:"[Pandamium] ",color:"blue"},{text:"Happy New Year!",color:"aqua",shadow_color:[0.0f,1.0f,1.0f,0.5f]},{text:" 🎁 ",color:"blue"},{text:"🎆",color:"yellow",shadow_color:[0.0f,0.0f,0.75f,1.0f]}]
execute if score <month> global matches 12 if score <day> global matches 31 if score <last_joined_relative_datetime> variable matches ..32054399 run loot give @s loot pandamium:items/heads/presents/new_year
execute if score <month> global matches 1 if score <day> global matches 1 if score <last_joined_relative_datetime> variable matches ..-86401 run loot give @s loot pandamium:items/heads/presents/new_year

# news feed
execute unless score <first_join> variable matches 1 unless score <prevent_old_player_notices> variable matches 1 if data storage pandamium.db.mail:data news_feed_inbox[0] run function pandamium:player/on_join/check_news

# update last_joined timestamp
function pandamium:utils/datetime/get_current_datetime_id
scoreboard players operation @s last_joined.datetime = <datetime_id> variable

# on-join events
execute if entity @s[gamemode=spectator,predicate=!pandamium:player/min_staff_perms/helper] run function pandamium:player/on_join/fix_trapped_spectators
execute if score @s on_join.take_items matches 1 run function pandamium:impl/auto_actions/actions/take_items/main
execute if score @s on_join.tp_to_spawn matches 1 run function pandamium:impl/auto_actions/actions/tp_to_spawn/main
execute if score @s on_join.reset_spawnpoint matches 1 run function pandamium:impl/auto_actions/actions/reset_spawnpoint/main

# messages
execute if score @s jailed matches 1.. store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
execute if score @s jailed matches 1.. run function pandamium:player/on_join/log_still_jailed with storage pandamium:templates macro.id
execute if score <unread_auto_actions> global matches 1.. if predicate pandamium:player/min_staff_perms/helper run tellraw @s [{text:"[Staff Info]",color:"dark_gray"},{text:" There are ",color:"gray",extra:[{score:{name:"<unread_auto_actions>",objective:"global"},bold:true}," unread auto-action",{text:"s",color:"gray"},"! "]},{text:"[🖂]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to see the ",color:"blue"},{text:"Auto-Actions Log",bold:true}]},click_event:{action:"run_command",command:"trigger auto_actions_log"}}]
execute if score <anti_bot_mode> global matches 1 if predicate pandamium:player/min_staff_perms/helper run tellraw @s [{text:"[Staff Info] ",color:"dark_gray",hover_event:{action:"show_text",value:[{text:"Click to open the ",color:"yellow"},{text:"Options Menu",bold:true}," to toggle ",{text:"Anti-Bot Mode",bold:true}]},click_event:{action:"run_command",command:"trigger options"}},{text:"Anti-Bot Mode",bold:true,color:"gray"},{text:" is enabled!",color:"gray"}]

execute if score @s offline_votes matches 1.. run tellraw @s [{text:"[Private Info] ",color:"dark_gray"},{text:"You voted ",color:"gray",extra:[{score:{name:"@s",objective:"offline_votes"},color:"aqua"}," times while offline."]}]
scoreboard players reset @s offline_votes

execute if score <dragon_fight> global matches 1 run tellraw @s [{"color":"blue","text":"[Private Info]"},{"color":"aqua","text":" The Monthly Enhanced Dragon Fight has started! Click here to teleport to the end and join in!","clickEvent":{"action":"run_command","value":"/trigger spawn set 3"}}]

execute if predicate pandamium:player/min_staff_perms/helper store result score <unread_staff_mails> variable if data storage pandamium.db.mail:data staff_inbox[{unread:1b}]
execute if predicate pandamium:player/min_staff_perms/helper store success score <unclaimed_items_in_staff_mails> variable if data storage pandamium.db.mail:data staff_inbox[{has_unclaimed_items:1b}]
execute if predicate pandamium:player/min_staff_perms/helper if score <unread_staff_mails> variable matches 1.. run tellraw @s [{text:"[Mail]",color:"blue"},{text:" There is unread mail in the staff team's inbox! ",color:"green",extra:[{text:"[View Staff Team Inbox]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"gold"},{text:"The Staff Team's Inbox",bold:true}]},click_event:{action:"run_command",command:"trigger mail set 1000008"}}]}]
execute if predicate pandamium:player/min_staff_perms/helper if score <unread_staff_mails> variable matches 1.. at @s run playsound block.note_block.chime master @s
execute if predicate pandamium:player/min_staff_perms/helper if score <unread_staff_mails> variable matches 0 if score <unclaimed_items_in_staff_mails> variable matches 1.. run tellraw @s [{text:"[Mail]",color:"blue"},{text:" There are unclaimed items in the staff team's inbox! ",color:"green",extra:[{text:"[View Staff Team Inbox]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"gold"},{text:"The Staff Team's Inbox",bold:true}]},click_event:{action:"run_command",command:"trigger mail set 1000008"}}]}]

# reset session-specific data
scoreboard players reset @s online_ticks
scoreboard players reset @s tpa_request.sender_id
scoreboard players reset @s tpa_request.time
scoreboard players reset @s selected_player
scoreboard players reset @s selected_block.x
scoreboard players reset @s selected_block.y
scoreboard players reset @s selected_block.z

# let queue know to update bossbars
scoreboard players set <queue.player_joined> global 1

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
scoreboard players add @s optn.trail_particles_when_stationary 0
scoreboard players add @s optn.do_projectile_trails 0

scoreboard players set @s mail_data.inbox_tab 0

# update spawnpoint (in case the player changed their name)
function pandamium:detect/set_spawnpoint/refresh

# start ticking function for hidden players if hidden
execute if score @s hidden matches 1.. run function pandamium:impl/hide/every_tick_while_hidden_players_exist
