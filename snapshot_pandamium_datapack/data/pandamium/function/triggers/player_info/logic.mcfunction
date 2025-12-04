execute if score @s jailed matches 1.. run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]

# menus
execute if score @s player_info matches 1 run return run function pandamium:triggers/player_info/print_selection_menu/main
execute if score @s player_info matches 1000001 run return run function pandamium:triggers/player_info/search_players
execute if score @s player_info matches 1000000.. run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# dynamic click events
execute if score @s player_info matches -2146999999..-2146000001 run return run function pandamium:triggers/player_info/do_dynamic_click_event/main

# select nearest player if value is -1
execute if score @s player_info matches -1 run scoreboard players operation @s player_info = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s player_info matches -1 run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" Could not find a non-staff player nearby!",color:"red"}]

# get target
scoreboard players operation <target_id> variable = @s player_info
execute if score <target_id> variable matches ..-1 run scoreboard players operation <target_id> variable *= #-1 constant
execute store result score <id> variable store result storage pandamium:temp arguments.id int 1 run scoreboard players operation <target_id> variable %= #1000000 constant
execute store success score <target_is_online> variable if entity @a[predicate=pandamium:matches_id,limit=1]

function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" Could not find a player with ID ",color:"red",extra:[{score:{name:"<target_id>",objective:"variable"}},{text:"!"}]}]

data modify storage pandamium:temp arguments.username set from storage pandamium.db.players:io selected.entry.username
function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp target set from storage pandamium:temp display_name

scoreboard players operation <id_with_leading_zeroes> variable = <target_id> variable
execute store result storage pandamium:temp id_with_leading_zeroes int 1 run scoreboard players add <id_with_leading_zeroes> variable 1000000
data modify storage pandamium:temp arguments.id_with_leading_zeroes set string storage pandamium:temp id_with_leading_zeroes 1

# print inspection menu
execute if score @s player_info matches 2..999999 run return run function pandamium:triggers/player_info/print_inspection_menu/main with storage pandamium:temp arguments

# 
execute if score @s player_info matches 2..999999 run return run function pandamium:triggers/player_info/print_inspection_menu/main with storage pandamium:temp arguments

# print teleport history menu
execute if score @s player_info matches -1999999..-1000001 if predicate pandamium:player/staff_perms/moderator run return run function pandamium:triggers/player_info/print_teleport_history_menu/main with storage pandamium:temp arguments
execute if score @s player_info matches -1999999..-1000001 unless predicate pandamium:player/staff_perms/moderator run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" You do not have permission to access that data!",color:"red"}]

# print mail menus
execute if score @s player_info matches -2999999..-2000001 if predicate pandamium:player/staff_perms/senior_moderator run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "inbox", self: false}
execute if score @s player_info matches -3999999..-3000001 if predicate pandamium:player/staff_perms/senior_moderator run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "outbox", self: false}
execute if score @s player_info matches -3999999..-2000001 unless predicate pandamium:player/staff_perms/senior_moderator run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" You do not have permission to access that data!",color:"red"}]

# set RTP cooldown: 10s
execute if score @s player_info matches -4999999..-4000001 run return run function pandamium:triggers/player_info/set_trigger_restrictions/rtp_10s with storage pandamium:temp arguments
# set RTP cooldown: 5m
execute if score @s player_info matches -5999999..-5000001 run return run function pandamium:triggers/player_info/set_trigger_restrictions/rtp_5m with storage pandamium:temp arguments
# set RTP cooldown: 1h
execute if score @s player_info matches -6999999..-6000001 run return run function pandamium:triggers/player_info/set_trigger_restrictions/rtp_1h with storage pandamium:temp arguments
# set RTP cooldown: forever
execute if score @s player_info matches -7999999..-7000001 run return run function pandamium:triggers/player_info/set_trigger_restrictions/rtp_forever with storage pandamium:temp arguments

# teleport to last death location
execute if score @s player_info matches -8999999..-8000001 if predicate pandamium:player/staff_perms/moderator run return run function pandamium:triggers/player_info/tp_last_death_location/main
execute if score @s player_info matches -8999999..-8000001 unless predicate pandamium:player/staff_perms/moderator run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" You do not have permission to perform that action!",color:"red"}]

# teleport target to spawn
execute if score @s player_info matches -9999999..-9000001 run return run function pandamium:triggers/player_info/tp_target_to_spawn/main

# take items on join
execute if score @s player_info matches -10999999..-10000001 if predicate pandamium:player/staff_perms/moderator run return run function pandamium:triggers/player_info/take_items_on_join/main with storage pandamium:temp arguments
execute if score @s player_info matches -10999999..-10000001 unless predicate pandamium:player/staff_perms/moderator run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" You do not have permission to perform that action!",color:"red"}]


# else
tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
