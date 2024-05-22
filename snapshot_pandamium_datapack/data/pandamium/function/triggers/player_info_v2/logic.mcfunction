execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

# menus
execute if score @s player_info_v2 matches 1 run return run function pandamium:triggers/player_info_v2/print_selection_menu/main
execute if score @s player_info_v2 matches 1000001 run return run function pandamium:triggers/player_info_v2/search_players
execute if score @s player_info_v2 matches 1000000.. run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# dynamic click events
execute if score @s player_info_v2 matches -2146999999..-2146000001 run return run function pandamium:triggers/player_info_v2/do_dynamic_click_event/main

# select nearest player if value is -1
execute if score @s player_info_v2 matches -1 run scoreboard players operation @s player_info_v2 = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s player_info_v2 matches -1 run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# get target
scoreboard players operation <target_id> variable = @s player_info_v2
execute if score <target_id> variable matches ..-1 run scoreboard players operation <target_id> variable *= #-1 constant
scoreboard players operation <target_id> variable %= #1000000 constant

execute store result storage pandamium:temp arguments.id int 1 run scoreboard players get <target_id> variable
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"<target_id>","objective":"variable"}},"!"]]

data modify storage pandamium:temp arguments.username set from storage pandamium.db.players:io selected.entry.username
function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp target set from storage pandamium:temp display_name

scoreboard players operation <id_with_leading_zeroes> variable = <target_id> variable
execute store result storage pandamium:temp id_with_leading_zeroes int 1 run scoreboard players add <id_with_leading_zeroes> variable 1000000
data modify storage pandamium:temp arguments.id_with_leading_zeroes set string storage pandamium:temp id_with_leading_zeroes 1

# print inspection menu
execute if score @s player_info_v2 matches 2..999999 run return run function pandamium:triggers/player_info_v2/print_inspection_menu/main with storage pandamium:temp arguments

# 
execute if score @s player_info_v2 matches 2..999999 run return run function pandamium:triggers/player_info_v2/print_inspection_menu/main with storage pandamium:temp arguments

# print teleport history menu
execute if score @s player_info_v2 matches -1999999..-1000001 run return run function pandamium:triggers/player_info_v2/print_teleport_history_menu/main with storage pandamium:temp arguments

# print mail menus
execute if score @s player_info_v2 matches -2999999..-2000001 if score @s staff_perms matches 3.. run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "inbox", self: false}
execute if score @s player_info_v2 matches -3999999..-3000001 if score @s staff_perms matches 3.. run return run function pandamium:triggers/mail/print_inbox_outbox_menu/main {type: "outbox", self: false}
execute if score @s player_info_v2 matches -3999999..-2000001 unless score @s staff_perms matches 3.. run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" You do not have permission to access that data!","color":"red"}]

# set RTP cooldown: 10s
execute if score @s player_info_v2 matches -4999999..-4000001 run return run function pandamium:triggers/player_info_v2/set_trigger_restrictions/rtp_10s with storage pandamium:temp arguments
# set RTP cooldown: 5m
execute if score @s player_info_v2 matches -5999999..-5000001 run return run function pandamium:triggers/player_info_v2/set_trigger_restrictions/rtp_5m with storage pandamium:temp arguments
# set RTP cooldown: 1h
execute if score @s player_info_v2 matches -6999999..-6000001 run return run function pandamium:triggers/player_info_v2/set_trigger_restrictions/rtp_1h with storage pandamium:temp arguments
# set RTP cooldown: forever
execute if score @s player_info_v2 matches -7999999..-7000001 run return run function pandamium:triggers/player_info_v2/set_trigger_restrictions/rtp_forever with storage pandamium:temp arguments


# else
tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
