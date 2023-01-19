# Menu
execute if score @s options matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s options matches 1.. if score @s disable_tpa_requests matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Receive TPA Requests","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s disable_tpa_requests matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Receive TPA Requests","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Keep-Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -52"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Keep-Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -52"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Phantom Spawning","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Phantom Spawning","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s disable_attack_indicator matches 1 run tellraw @s [{"text":"Attack Indicator: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Attack Indicator","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -4"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s disable_attack_indicator matches 1 run tellraw @s [{"text":"Attack Indicator: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Attack Indicator","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -4"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"Hide Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Hide Parkour Timer","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"Hide Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Hide Parkour Timer","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s sneak_to_sit matches 1 run tellraw @s [{"text":"Crouch Twice to Sit: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Crouch Twice to Sit","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -6"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s sneak_to_sit matches 1 run tellraw @s [{"text":"Crouch Twice to Sit: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"aqua"},{"text":"Crouch Twice to Sit","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -6"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s gameplay_perms matches 3.. if score @s hide_auto_messages matches 1 run tellraw @s [{"text":"Chat Reminders: ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"dark_aqua"},{"text":"Chat Reminders","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -101"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s gameplay_perms matches 3.. unless score @s hide_auto_messages matches 1 run tellraw @s [{"text":"Chat Reminders: ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"dark_aqua"},{"text":"Chat Reminders","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -101"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":"Chat Reminders: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"This option is only available to Donators and players ranked Elder, Veteran or Elite.\n","color":"red"},[{"text":"Click here to join our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2"}," server for more information on how to vote and donate!"]]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"True","color":"#E9E9E9","bold":true}]

execute if score @s options matches 1.. if score @s donator matches 1 if score @s disable_donator_prefix matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"dark_purple"},{"text":"Donator Prefix","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -201"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s donator matches 1 unless score @s disable_donator_prefix matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"dark_purple"},{"text":"Donator Prefix","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -201"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s donator matches 1 unless entity @s[team=vip] unless score @s staff_perms matches 1.. run tellraw @s [{"text":"Donator Prefix: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"This option is only available to Donators.\n","color":"red"},[{"text":"Click here to join our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2"}," server for more information on how to donate!"]]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"False","color":"#E9E9E9","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 1.. if score @s silent_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"yellow"},{"text":"Silent Punishments","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 1.. unless score @s silent_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"yellow"},{"text":"Silent Punishments","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score @s spectator_night_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"gold"},{"text":"Spectator Night Vision","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -401"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score @s spectator_night_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"gold"},{"text":"Spectator Night Vision","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -401"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score @s disable_spectator_portals matches 1 run tellraw @s [{"text":"Spectator Portals: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"gold"},{"text":"Spectator Portals","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -403"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score @s disable_spectator_portals matches 1 run tellraw @s [{"text":"Spectator Portals: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"gold"},{"text":"Spectator Portals","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -403"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. unless score @s staff_perms matches 3.. if score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"Send Extra Debug Info: ","color":"#C9C9C9"},{"text":"True","color":"#E9E9E9","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 3.. if score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"Send Extra Debug Info: ","color":"#FB6F00","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"#FB6F00"},{"text":"Send Extra Debug Info","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -501"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 3.. unless score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"Send Extra Debug Info: ","color":"#FB6F00","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"#FB6F00"},{"text":"Send Extra Debug Info","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -501"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"\nAnti-Bot Mode: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle setting ","color":"#FF0000"},{"text":"Anti-Bot Mode","bold":true},{"text":"\nAutomatically ban players who's IPs get flagged as suspicious and have less than 5 minutes of playtime.","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -402"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"\nAnti-Bot Mode: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle setting ","color":"#FF0000"},{"text":"Anti-Bot Mode","bold":true},{"text":"\nAutomatically ban players who's IPs get flagged as suspicious and have less than 5 minutes of playtime.","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -402"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 3.. run tellraw @s [{"text":"\nOperator: ","color":"#FB6F00"},{"text":"[De-op]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"De-op","bold":true}," yourself"]},"clickEvent":{"action":"run_command","value":"/trigger options set -502"}}," ",{"text":"[Op]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"green"},{"text":"Op","bold":true}," yourself"]},"clickEvent":{"action":"run_command","value":"/trigger options set -503"}}]

execute if score @s options matches 1.. run tellraw @s {"text":"==============================","color":"aqua"}

# Validate Input
scoreboard players set <valid_option> variable 0
execute if score @s options matches -5..-1 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -52 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -101 if score @s gameplay_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -201 if entity @s[scores={donator=1,staff_perms=0},team=!vip] run scoreboard players set <valid_option> variable 1
execute if score @s options matches -301 if score @s staff_perms matches 1.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -403..-401 if score @s staff_perms matches 2.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -503..-501 if score @s staff_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches ..-1 if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Confirmation Messages
execute if score @s options matches -52 if score @s disable_keep_inventory matches 1 run scoreboard players set @s options -2
execute if score @s options matches -52 run tellraw @s [{"text":"[Options]","color":"dark_red"},[{"text":" Are you sure you want to ","color":"red"},[{"text":"disable ","underlined":true},{"text":"Keep-Inventory","bold":true}],"? Doing that will cause you to drop all of your items onto the ground when you die. "],{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"dark_green"},{"text":"Keep-Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -2"}}]

# Options
execute if score @s options matches -1 store success score @s disable_tpa_requests unless score @s disable_tpa_requests matches 1
execute if score @s options matches -1 if score @s disable_tpa_requests matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tpa_requests matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -2 store success score @s disable_keep_inventory unless score @s disable_keep_inventory matches 1
execute if score @s options matches -2 if score @s disable_keep_inventory matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -2 if score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -3 store success score @s disable_insomnia unless score @s disable_insomnia matches 1
execute if score @s options matches -3 if score @s disable_insomnia matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Phantom Spawning","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -3 if score @s disable_insomnia matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Phantom Spawning","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -4 store success score @s disable_attack_indicator unless score @s disable_attack_indicator matches 1
execute if score @s options matches -4 if score @s disable_attack_indicator matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Attack Indicator","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -4 if score @s disable_attack_indicator matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Attack Indicator","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -5 store success score @s hide_parkour_timer unless score @s hide_parkour_timer matches 1
execute if score @s options matches -5 if score @s hide_parkour_timer matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Hide Parkour Timer","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -5 if score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Hide Parkour Timer","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -6 store success score @s sneak_to_sit unless score @s sneak_to_sit matches 1
execute if score @s options matches -6 if score @s sneak_to_sit matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Crouch Twice to Sit","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -6 if score @s sneak_to_sit matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Crouch Twice to Sit","bold":true,"color":"yellow"},"!"]

# Elder & up Options
execute if score @s options matches -101 if score <valid_option> variable matches 1 store success score @s hide_auto_messages unless score @s hide_auto_messages matches 1
execute if score @s options matches -101 if score <valid_option> variable matches 1 if score @s hide_auto_messages matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Chat Reminders","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -101 if score <valid_option> variable matches 1 if score @s hide_auto_messages matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Chat Reminders","bold":true,"color":"yellow"},"!"]

# Donator Options
execute if score @s options matches -201 if score <valid_option> variable matches 1 store success score @s disable_donator_prefix unless score @s disable_donator_prefix matches 1
execute if score @s options matches -201 if score <valid_option> variable matches 1 if score @s disable_donator_prefix matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Donator Prefix","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -201 if score <valid_option> variable matches 1 if score @s disable_donator_prefix matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Donator Prefix","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -201 if score <valid_option> variable matches 1 run function pandamium:misc/update_teams

# Helper & up Options
execute if score @s options matches -301 if score <valid_option> variable matches 1 store success score @s silent_punishments unless score @s silent_punishments matches 1
execute if score @s options matches -301 if score <valid_option> variable matches 1 if score @s silent_punishments matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Disabled ","color":"aqua"},{"text":"Silent Punishments","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -301 if score <valid_option> variable matches 1 if score @s silent_punishments matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Enabled ","color":"aqua"},{"text":"Silent Punishments","bold":true,"color":"yellow"},"!"]

# Moderator & up Options
execute if score @s options matches -401 if score <valid_option> variable matches 1 store success score @s spectator_night_vision unless score @s spectator_night_vision matches 1
execute if score @s options matches -401 if score <valid_option> variable matches 1 if score @s spectator_night_vision matches 0 run effect clear @s[gamemode=spectator] night_vision
execute if score @s options matches -401 if score <valid_option> variable matches 1 if score @s spectator_night_vision matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Spectator Night Vision","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -401 if score <valid_option> variable matches 1 if score @s spectator_night_vision matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Spectator Night Vision","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -402 if score <valid_option> variable matches 1 store success score <anti_bot_mode> global unless score <anti_bot_mode> global matches 1
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Disabled ","color":"aqua"},{"text":"Anti-Bot Mode","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," disabled ",{"text":"Anti-Bot Mode","bold":true},"!"]
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Enabled ","color":"aqua"},{"text":"Anti-Bot Mode","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," enabled ",{"text":"Anti-Bot Mode","bold":true},"!"]

execute if score @s options matches -403 if score <valid_option> variable matches 1 store success score @s disable_spectator_portals unless score @s disable_spectator_portals matches 1
execute if score @s options matches -403 if score <valid_option> variable matches 1 if score @s disable_spectator_portals matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Spectator Portals","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -403 if score <valid_option> variable matches 1 if score @s disable_spectator_portals matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Spectator Portals","bold":true,"color":"yellow"},"!"]

# Sr Moderator & up Options
execute if score @s options matches -501 if score <valid_option> variable matches 1 store success score @s send_extra_debug_info unless score @s send_extra_debug_info matches 1
execute if score @s options matches -501 if score <valid_option> variable matches 1 if score @s send_extra_debug_info matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Disabled ","color":"aqua"},{"text":"Send Extra Debug Info","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -501 if score <valid_option> variable matches 1 if score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options] ","color":"dark_green"},{"text":"Enabled ","color":"aqua"},{"text":"Send Extra Debug Info","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -502 if score <valid_option> variable matches 1 run function pandamium:misc/deop
execute if score @s options matches -502 if score <valid_option> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," You are now ",{"text":"de-opped","color":"aqua"},"!"]

execute if score @s options matches -503 if score <valid_option> variable matches 1 run function pandamium:misc/op
execute if score @s options matches -503 if score <valid_option> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," You are now ",{"text":"opped","color":"aqua"},"!"]

#

scoreboard players reset @s options
scoreboard players enable @s options
