# Normal Options
execute if score @s options matches -1 run scoreboard players add @s disable_tpa_requests 1
execute if score @s options matches -1 unless score @s disable_tpa_requests matches 1..2 run scoreboard players reset @s disable_tpa_requests
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
execute if score @s options matches -5 if score @s hide_parkour_timer matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Show Parkour Timer","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -5 if score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Show Parkour Timer","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -6 store success score @s sneak_to_sit unless score @s sneak_to_sit matches 1
execute if score @s options matches -6 if score @s sneak_to_sit matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Crouch Twice to Sit","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -6 if score @s sneak_to_sit matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Crouch Twice to Sit","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -7 run scoreboard players add @s disable_idle_indicator 1
execute if score @s options matches -7 unless score @s disable_idle_indicator matches 1..2 run scoreboard players reset @s disable_idle_indicator
execute if score @s options matches -7 if score @s staff_perms matches 0 unless score @s disable_idle_indicator matches 0..1 run scoreboard players reset @s disable_idle_indicator
execute if score @s options matches -7 unless score @s disable_idle_indicator matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Show Idle Indicator","color":"aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -7 if score @s disable_idle_indicator matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Show Idle Indicator","color":"aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -7 if score @s disable_idle_indicator matches 2 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Show Idle Indicator","color":"aqua"}," to ",{"text":"True Unless Spectating","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -7 run function pandamium:player/ranks/update_team

# Elder & up Options
execute if score @s options matches -101 if score <valid_option> variable matches 1 store success score @s hide_auto_messages unless score @s hide_auto_messages matches 1
execute if score @s options matches -101 if score <valid_option> variable matches 1 if score @s hide_auto_messages matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Chat Reminders","color":"dark_aqua"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -101 if score <valid_option> variable matches 1 if score @s hide_auto_messages matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Chat Reminders","color":"dark_aqua"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]

# Donator Options
execute if score @s options matches -201 if score <valid_option> variable matches 1 store success score @s disable_donator_prefix unless score @s disable_donator_prefix matches 1
execute if score @s options matches -201 if score <valid_option> variable matches 1 if score @s disable_donator_prefix matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Donator Prefix","color":"dark_purple"}," to ",{"text":"True","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -201 if score <valid_option> variable matches 1 if score @s disable_donator_prefix matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set option ",{"text":"Donator Prefix","color":"dark_purple"}," to ",{"text":"False","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -201 if score <valid_option> variable matches 1 run function pandamium:player/ranks/update_team

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

execute if score @s options matches -502 if score <valid_option> variable matches 1 run function pandamium:player/deop
execute if score @s options matches -502 if score <valid_option> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," You are now ",{"text":"de-opped","color":"aqua"},"!"]

execute if score @s options matches -503 if score <valid_option> variable matches 1 run function pandamium:player/op
execute if score @s options matches -503 if score <valid_option> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," You are now ",{"text":"opped","color":"aqua"},"!"]

# Disable Donator Migration Notice
execute if score @s options matches -10001 if score @s donator_migration_notice matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," You will no longer see the ",{"text":"donator migration notice","color":"aqua"}," when you join!"]
execute if score @s options matches -10001 if score @s donator_migration_notice matches 1 run scoreboard players set @s donator_migration_notice 0
