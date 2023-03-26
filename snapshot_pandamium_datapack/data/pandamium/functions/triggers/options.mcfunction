# Menu
execute if score @s options matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s options matches 1.. unless score @s id matches 2.. run tellraw @s [{"text":"Receive TPA Requests: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"Your ID is too low to be\ntargetted by triggers.","color":"red"}]}},{"text":"Impossible","color":"#E9E9E9","bold":true}]
execute if score @s options matches 1.. if score @s id matches 2.. unless score @s disable_tpa_requests matches 1.. run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive TPA Requests","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"All","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s id matches 2.. if score @s disable_tpa_requests matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive TPA Requests","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"None","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s id matches 2.. if score @s disable_tpa_requests matches 2 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Receive TPA Requests","bold":true},{"text":"\n• All (Default)\n• None\n• All Except Guests","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"All Except Guests","color":"yellow","bold":true}]

execute if score @s options matches 1.. unless score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Keep-Inventory","bold":true},{"text":"\nIf False, your items and xp will\ndrop on the ground when you die.","color":"gray"},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1002"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Keep-Inventory","bold":true},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -1002"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. unless score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Phantom Spawning","bold":true},{"text":"\nIf True, phantoms will spawn\nabove you at night unless you\nhave slept recently.","color":"gray"},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Phantom Spawning","bold":true},{"text":"\nIf True, phantoms will spawn\nabove you at night unless you\nhave slept recently.","color":"gray"},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. unless score @s disable_attack_indicator matches 1 run tellraw @s [{"text":"Attack Indicator: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Attack Indicator","bold":true},{"text":"\nIf True, the health of entities\nwill appear on your action bar\nwhen you attack them.","color":"gray"},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -4"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s disable_attack_indicator matches 1 run tellraw @s [{"text":"Attack Indicator: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Attack Indicator","bold":true},{"text":"\nIf True, the health of entities\nwill appear on your action bar\nwhen you attack them.","color":"gray"},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -4"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. unless score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"Hide Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Hide Parkour Timer","bold":true},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"Hide Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Hide Parkour Timer","bold":true},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. unless score @s sneak_to_sit matches 1 run tellraw @s [{"text":"Crouch Twice to Sit: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Crouch Twice to Sit","bold":true},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -6"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s sneak_to_sit matches 1 run tellraw @s [{"text":"Crouch Twice to Sit: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Crouch Twice to Sit","bold":true},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -6"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s gameplay_perms matches 3.. unless score @s hide_auto_messages matches 1 run tellraw @s [{"text":"Chat Reminders: ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_aqua"},{"text":"Chat Reminders","bold":true},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -101"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s gameplay_perms matches 3.. if score @s hide_auto_messages matches 1 run tellraw @s [{"text":"Chat Reminders: ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_aqua"},{"text":"Chat Reminders","bold":true},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -101"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":"Chat Reminders: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"This option is only available to Donators and players ranked Elder, Veteran or Elite.\n","color":"red"},[{"text":"Click here to join our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2"}," server for more information on how to vote and donate!"]]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"True","color":"#E9E9E9","bold":true}]

execute if score @s options matches 1.. if score @s donator matches 1 unless score @s disable_donator_prefix matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_purple"},{"text":"Donator Prefix","bold":true},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -201"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s donator matches 1 if score @s disable_donator_prefix matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_purple"},{"text":"Donator Prefix","bold":true},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -201"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s donator matches 1 unless entity @s[team=vip] unless score @s staff_perms matches 1.. run tellraw @s [{"text":"Donator Prefix: ","color":"#C9C9C9","hoverEvent":{"action":"show_text","value":[{"text":"This option is only available to Donators.\n","color":"red"},[{"text":"Click here to join our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2"}," server for more information on how to donate!"]]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"False","color":"#E9E9E9","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 1.. unless score @s silent_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"yellow"},{"text":"Silent Punishments","bold":true},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 1.. if score @s silent_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"yellow"},{"text":"Silent Punishments","bold":true},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score @s spectator_night_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"gold"},{"text":"Spectator Night Vision","bold":true},{"text":"\nIf True, night vision will be\napplied while you are in\nspectator mode.","color":"gray"},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -401"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score @s spectator_night_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"gold"},{"text":"Spectator Night Vision","bold":true},{"text":"\nIf True, night vision will be\napplied while you are in\nspectator mode.","color":"gray"},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -401"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score @s disable_spectator_portals matches 1 run tellraw @s [{"text":"Spectator Portals: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"gold"},{"text":"Spectator Portals","bold":true},{"text":"\nIf True, floating in a portal\nblock for a few seconds will\nteleport you through it,\nroughly.","color":"gray"},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -403"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score @s disable_spectator_portals matches 1 run tellraw @s [{"text":"Spectator Portals: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"gold"},{"text":"Spectator Portals","bold":true},{"text":"\nIf True, floating in a portal\nblock for a few seconds will\nteleport you through it,\nroughly.","color":"gray"},{"text":"\n• True (Default)\n• False","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -403"}},{"text":"False","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 3.. unless score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"Send Extra Debug Info: ","color":"#FB6F00","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"#FB6F00"},{"text":"Send Extra Debug Info","bold":true},{"text":"\nIf True, you will receive some \nmore player command feedback\nmessages in chat.","color":"gray"},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -501"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 3.. if score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"Send Extra Debug Info: ","color":"#FB6F00","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"#FB6F00"},{"text":"Send Extra Debug Info","bold":true},{"text":"\nIf True, you will receive some \nmore player command feedback\nmessages in chat.","color":"gray"},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -501"}},{"text":"True","color":"yellow","bold":true}]
execute if score @s options matches 1.. unless score @s staff_perms matches 3.. if score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"Send Extra Debug Info: ","color":"#C9C9C9"},{"text":"True","color":"#E9E9E9","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"\nAnti-Bot Mode: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Anti-Bot Mode","bold":true},{"text":"\nAutomatically ban players who's\nIPs get flagged as suspicious\nand have less than 5 minutes of\nplaytime.","color":"gray"},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -402"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"\nAnti-Bot Mode: ","color":"#FF0000","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle server setting\n","color":"#FF0000"},{"text":"Anti-Bot Mode","bold":true},{"text":"\nAutomatically ban players who's\nIPs get flagged as suspicious\nand have less than 5 minutes of\nplaytime.","color":"gray"},{"text":"\n• False (Default)\n• True","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -402"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if score @s staff_perms matches 3.. run tellraw @s [{"text":"\nOperator: ","color":"#FB6F00"},{"text":"[De-op]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"De-op","bold":true}," yourself"]},"clickEvent":{"action":"run_command","value":"/trigger options set -502"}}," ",{"text":"[Op]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"green"},{"text":"Op","bold":true}," yourself"]},"clickEvent":{"action":"run_command","value":"/trigger options set -503"}}]

execute if score @s options matches 1.. run tellraw @s {"text":"==============================","color":"aqua"}

# Validate Input
scoreboard players set <valid_option> variable 0
execute if score @s options matches -6..-1 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -1002..-1002 run scoreboard players set <valid_option> variable 1
execute if score @s options matches -101..-101 if score @s gameplay_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -201..-201 if entity @s[scores={donator=1,staff_perms=0},team=!vip] run scoreboard players set <valid_option> variable 1
execute if score @s options matches -301..-301 if score @s staff_perms matches 1.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -403..-401 if score @s staff_perms matches 2.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches -503..-501 if score @s staff_perms matches 3.. run scoreboard players set <valid_option> variable 1
execute if score @s options matches ..-1 if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Confirmation Messages
execute if score @s options matches -1002 if score @s disable_keep_inventory matches 1 run scoreboard players set @s options -2
execute if score @s options matches -1002 run tellraw @s [{"text":"[Options]","color":"dark_red"},[{"text":" Are you sure you want to ","color":"red"},[{"text":"disable ","underlined":true},{"text":"Keep-Inventory","bold":true}],"? Doing that will cause you to drop all of your items onto the ground when you die. "],{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"dark_green"},{"text":"Keep-Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -2"}}]

# Options
execute if score @s options matches -1 run scoreboard players add @s disable_tpa_requests 1
execute if score @s options matches -1 unless score @s disable_tpa_requests matches 0..2 run scoreboard players reset @s disable_tpa_requests
execute if score @s options matches -1 unless score @s disable_tpa_requests matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Receive TPA Requests","color":"aqua"}," to ",{"text":"All","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tpa_requests matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Receive TPA Requests","color":"aqua"}," to ",{"text":"None","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tpa_requests matches 2 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Receive TPA Requests","color":"aqua"}," to ",{"text":"All Except Guests","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -2 store success score @s disable_keep_inventory unless score @s disable_keep_inventory matches 1
execute if score @s options matches -2 if score @s disable_keep_inventory matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Keep-Inventory","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -2 if score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Keep-Inventory","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -3 store success score @s disable_insomnia unless score @s disable_insomnia matches 1
execute if score @s options matches -3 if score @s disable_insomnia matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Phantom Spawning","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -3 if score @s disable_insomnia matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Phantom Spawning","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -4 store success score @s disable_attack_indicator unless score @s disable_attack_indicator matches 1
execute if score @s options matches -4 if score @s disable_attack_indicator matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Attack Indicator","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -4 if score @s disable_attack_indicator matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Attack Indicator","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -5 store success score @s hide_parkour_timer unless score @s hide_parkour_timer matches 1
execute if score @s options matches -5 if score @s hide_parkour_timer matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Hide Parkour Timer","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -5 if score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Hide Parkour Timer","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -6 store success score @s sneak_to_sit unless score @s sneak_to_sit matches 1
execute if score @s options matches -6 if score @s sneak_to_sit matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Crouch Twice to Sit","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -6 if score @s sneak_to_sit matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Crouch Twice to Sit","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]

# Elder & up Options
execute if score @s options matches -101 if score <valid_option> variable matches 1 store success score @s hide_auto_messages unless score @s hide_auto_messages matches 1
execute if score @s options matches -101 if score <valid_option> variable matches 1 if score @s hide_auto_messages matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Chat Reminders","color":"dark_aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -101 if score <valid_option> variable matches 1 if score @s hide_auto_messages matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Chat Reminders","color":"dark_aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]

# Donator Options
execute if score @s options matches -201 if score <valid_option> variable matches 1 store success score @s disable_donator_prefix unless score @s disable_donator_prefix matches 1
execute if score @s options matches -201 if score <valid_option> variable matches 1 if score @s disable_donator_prefix matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Donator Prefix","color":"dark_purple"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -201 if score <valid_option> variable matches 1 if score @s disable_donator_prefix matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Donator Prefix","color":"dark_purple"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -201 if score <valid_option> variable matches 1 run function pandamium:misc/update_teams

# Helper & up Options
execute if score @s options matches -301 if score <valid_option> variable matches 1 store success score @s silent_punishments unless score @s silent_punishments matches 1
execute if score @s options matches -301 if score <valid_option> variable matches 1 if score @s silent_punishments matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Silent Punishments","color":"yellow"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -301 if score <valid_option> variable matches 1 if score @s silent_punishments matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Silent Punishments","color":"yellow"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]

# Moderator & up Options
execute if score @s options matches -401 if score <valid_option> variable matches 1 store success score @s spectator_night_vision unless score @s spectator_night_vision matches 1
execute if score @s options matches -401 if score <valid_option> variable matches 1 if score @s spectator_night_vision matches 0 run effect clear @s[gamemode=spectator] night_vision
execute if score @s options matches -401 if score <valid_option> variable matches 1 if score @s spectator_night_vision matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Spectator Night Vision","color":"gold"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -401 if score <valid_option> variable matches 1 if score @s spectator_night_vision matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Spectator Night Vision","color":"gold"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -402 if score <valid_option> variable matches 1 store success score <anti_bot_mode> global unless score <anti_bot_mode> global matches 1
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Anti-Bot Mode","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," disabled ",{"text":"Anti-Bot Mode","bold":true},"!"]
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Anti-Bot Mode","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -402 if score <valid_option> variable matches 1 if score <anti_bot_mode> global matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," enabled ",{"text":"Anti-Bot Mode","bold":true},"!"]

execute if score @s options matches -403 if score <valid_option> variable matches 1 store success score @s disable_spectator_portals unless score @s disable_spectator_portals matches 1
execute if score @s options matches -403 if score <valid_option> variable matches 1 if score @s disable_spectator_portals matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Spectator Portals","color":"gold"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -403 if score <valid_option> variable matches 1 if score @s disable_spectator_portals matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Spectator Portals","color":"gold"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]

# Sr Moderator & up Options
execute if score @s options matches -501 if score <valid_option> variable matches 1 store success score @s send_extra_debug_info unless score @s send_extra_debug_info matches 1
execute if score @s options matches -501 if score <valid_option> variable matches 1 if score @s send_extra_debug_info matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Send Extra Debug Info","color":"#FB6F00"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -501 if score <valid_option> variable matches 1 if score @s send_extra_debug_info matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Send Extra Debug Info","color":"#FB6F00"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -502 if score <valid_option> variable matches 1 run function pandamium:misc/deop
execute if score @s options matches -502 if score <valid_option> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," You are now ",{"text":"de-opped","color":"aqua"},"!"]

execute if score @s options matches -503 if score <valid_option> variable matches 1 run function pandamium:misc/op
execute if score @s options matches -503 if score <valid_option> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," You are now ",{"text":"opped","color":"aqua"},"!"]

#

scoreboard players reset @s options
scoreboard players enable @s options
