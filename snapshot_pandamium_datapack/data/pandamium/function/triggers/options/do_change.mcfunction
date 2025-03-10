# Normal Options
execute if score @s options matches -1 run scoreboard players add @s disable_tpa_requests 1
execute if score @s options matches -1 unless score @s disable_tpa_requests matches 1..2 run scoreboard players set @s disable_tpa_requests 0
execute if score @s options matches -1 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -1 if score @s disable_tpa_requests matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Receive TPA Requests",color:"aqua"}," to ",{text:"All",bold:true,color:"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tpa_requests matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Receive TPA Requests",color:"aqua"}," to ",{text:"None",bold:true,color:"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tpa_requests matches 2 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Receive TPA Requests",color:"aqua"}," to ",{text:"All Except Guests",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={disable_tpa_requests=0}] disable_tpa_requests

execute if score @s options matches -2 store success score @s disable_keep_inventory unless score @s disable_keep_inventory matches 1
execute if score @s options matches -2 run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches -2 if score @s disable_keep_inventory matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Keep-Inventory",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -2 if score @s disable_keep_inventory matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Keep-Inventory",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={disable_keep_inventory=0}] disable_keep_inventory

execute if score @s options matches -3 store success score @s optn.disable_phantom_spawning unless score @s optn.disable_phantom_spawning matches 1
execute if score @s options matches -3 run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches -3 if score @s optn.disable_phantom_spawning matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Phantom Spawning",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -3 if score @s optn.disable_phantom_spawning matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Phantom Spawning",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]

execute if score @s options matches -4 store success score @s disable_attack_indicator unless score @s disable_attack_indicator matches 1
execute if score @s options matches -4 run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches -4 if score @s disable_attack_indicator matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Attack Indicator",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -4 if score @s disable_attack_indicator matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Attack Indicator",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={disable_attack_indicator=0}] disable_attack_indicator

execute if score @s options matches -5 store success score @s hide_parkour_timer unless score @s hide_parkour_timer matches 1
execute if score @s options matches -5 if score @s hide_parkour_timer matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Parkour Timer",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -5 if score @s hide_parkour_timer matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Parkour Timer",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={hide_parkour_timer=0}] hide_parkour_timer

execute if score @s options matches -6 store success score @s sneak_to_sit unless score @s sneak_to_sit matches 1
execute if score @s options matches -6 run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches -6 if score @s sneak_to_sit matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Crouch Twice to Sit",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -6 if score @s sneak_to_sit matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Crouch Twice to Sit",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={sneak_to_sit=0}] sneak_to_sit

execute if score @s options matches -7 if score @s pronouns_type matches 3.. run scoreboard players set @s pronouns_type -1
execute if score @s options matches -7 store result storage pandamium.db.players:io selected.entry.data.pronouns_type byte 1 run scoreboard players add @s pronouns_type 1
execute if score @s options matches -7 if score @s pronouns_type matches 0 run data remove storage pandamium.db.players:io selected.entry.data.pronouns_type
execute if score @s options matches -7 run function pandamium:utils/database/players/save
execute if score @s options matches -7 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -7 if score @s pronouns_type matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Preferred Pronouns",color:"aqua"}," to ",{text:"Unspecified",bold:true,color:"yellow"},"!"]
execute if score @s options matches -7 if score @s pronouns_type matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Preferred Pronouns",color:"aqua"}," to ",{text:"He/Him",bold:true,color:"yellow"},"!"]
execute if score @s options matches -7 if score @s pronouns_type matches 2 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Preferred Pronouns",color:"aqua"}," to ",{text:"She/Her",bold:true,color:"yellow"},"!"]
execute if score @s options matches -7 if score @s pronouns_type matches 3 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Preferred Pronouns",color:"aqua"}," to ",{text:"They/Them",bold:true,color:"yellow"},"!"]
execute if score @s options matches -7 if score @s pronouns_type matches 0 run scoreboard players reset @s pronouns_type
execute if score @s options matches -7 run function pandamium:player/update_tablist_value

execute if score @s options matches -8 store success score @s hide_coordinates unless score @s hide_coordinates matches 1
execute if score @s options matches -8 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -8 if score @s hide_coordinates matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Hide Coordinates",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -8 if score @s hide_coordinates matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Hide Coordinates",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={hide_coordinates=0}] hide_coordinates

execute if score @s options matches -9 store success score @s hide_voting_announcements unless score @s hide_voting_announcements matches 1
execute if score @s options matches -9 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -9 if score @s hide_voting_announcements matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Announce Votes",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -9 if score @s hide_voting_announcements matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Announce Votes",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={hide_voting_announcements=0}] hide_voting_announcements

execute if score @s options matches -10 store success score @s show_home_numbers unless score @s show_home_numbers matches 1
execute if score @s options matches -10 if score @s show_home_numbers matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Home Numbers",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -10 if score @s show_home_numbers matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Home Numbers",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -10 run trigger homes
scoreboard players reset @s[scores={show_home_numbers=0}] show_home_numbers

execute if score @s options matches -12 store success score @s hide_trophy_suffix unless score @s hide_trophy_suffix matches 1
execute if score @s options matches -12 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -12 if score @s hide_trophy_suffix matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Leader Board Trophy",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -12 if score @s hide_trophy_suffix matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Leader Board Trophy",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -12 run function pandamium:player/teams/update_suffix
scoreboard players reset @s[scores={hide_trophy_suffix=0}] hide_trophy_suffix

execute if score @s options matches -13 store success score @s optn.disable_dynamic_triggers.tpa_names unless score @s optn.disable_dynamic_triggers.tpa_names matches 1
execute if score @s options matches -13 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -13 if score @s optn.disable_dynamic_triggers.tpa_names matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic TPA Triggers",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -13 if score @s optn.disable_dynamic_triggers.tpa_names matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic TPA Triggers",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]

execute if score @s options matches -14 store success score @s optn.disable_dynamic_triggers.home_names unless score @s optn.disable_dynamic_triggers.home_names matches 1
execute if score @s options matches -14 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -14 if score @s optn.disable_dynamic_triggers.home_names matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Home Triggers",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -14 if score @s optn.disable_dynamic_triggers.home_names matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Home Triggers",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]

execute if score @s options matches -15 if score @s parkour.checkpoint matches 0.. run tellraw @s [{text:"[Options]",color:"dark_red"},{text:" You may not change this option during a run!",color:"red"}]
execute if score @s options matches -15 unless score @s parkour.checkpoint matches 0.. store success score @s optn.parkour.restart_on_fall unless score @s optn.parkour.restart_on_fall matches 1
execute if score @s options matches -15 unless score @s parkour.checkpoint matches 0.. if score @s optn.parkour.restart_on_fall matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"New Attempt on Fall",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -15 unless score @s parkour.checkpoint matches 0.. if score @s optn.parkour.restart_on_fall matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"New Attempt on Fall",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]

execute if score @s options matches -16 run scoreboard players add @s optn.disable_receiving_mail 1
execute if score @s options matches -16 unless score @s optn.disable_receiving_mail matches 1..2 run scoreboard players set @s optn.disable_receiving_mail 0
execute if score @s options matches -16 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -16 if score @s optn.disable_receiving_mail matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Receive Mail",color:"aqua"}," to ",{text:"All",bold:true,color:"yellow"},"!"]
execute if score @s options matches -16 if score @s optn.disable_receiving_mail matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Receive Mail",color:"aqua"}," to ",{text:"None",bold:true,color:"yellow"},"!"]
execute if score @s options matches -16 if score @s optn.disable_receiving_mail matches 2 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Receive Mail",color:"aqua"}," to ",{text:"All Except Guests",bold:true,color:"yellow"},"!"]

execute if score @s options matches -17 store success score @s optn.enable_dynamic_triggers.mail_names unless score @s optn.enable_dynamic_triggers.mail_names matches 1
execute if score @s options matches -17 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -17 if score @s optn.enable_dynamic_triggers.mail_names matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Mail Triggers",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -17 if score @s optn.enable_dynamic_triggers.mail_names matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Mail Triggers",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]

execute if score @s options matches -18 store success score @s optn.enable_mini_block_help_trigger unless score @s optn.enable_mini_block_help_trigger matches 1
execute if score @s options matches -18 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches -18 if score @s optn.enable_mini_block_help_trigger matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Advancements Progress Trigger",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -18 if score @s optn.enable_mini_block_help_trigger matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Advancements Progress Trigger",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]

# Elder & up Options
execute if score @s options matches -101 store success score @s hide_auto_messages unless score @s hide_auto_messages matches 1
execute if score @s options matches -101 run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches -101 if score @s hide_auto_messages matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Chat Reminders",color:"dark_aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -101 if score @s hide_auto_messages matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Chat Reminders",color:"dark_aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={hide_auto_messages=0}] hide_auto_messages

execute if score @s options matches -102 store success score @s hide_unset_homes unless score @s hide_unset_homes matches 1
execute if score @s options matches -102 if score @s hide_unset_homes matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Unset Homes",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -102 if score @s hide_unset_homes matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Show Unset Homes",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -102 run trigger homes
scoreboard players reset @s[scores={hide_unset_homes=0}] hide_unset_homes

# Strictly Supporter (Non-Staff & Non-VIP) Options
execute if score @s options matches -201 store success score @s disable_donator_prefix unless score @s disable_donator_prefix matches 1
execute if score @s options matches -201 run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches -201 if score @s disable_donator_prefix matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Supporter Prefix",color:"dark_purple"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -201 if score @s disable_donator_prefix matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Supporter Prefix",color:"dark_purple"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -201 run function pandamium:player/teams/update_base
scoreboard players reset @s[scores={disable_donator_prefix=0}] disable_donator_prefix

# Helper & up Options
execute if score @s options matches -301 store success score @s silent_punishments unless score @s silent_punishments matches 1
execute if score @s options matches -301 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -301 if score @s silent_punishments matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Announce Punishments",color:"yellow"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -301 if score @s silent_punishments matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Announce Punishments",color:"yellow"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={silent_punishments=0}] silent_punishments

execute if score @s options matches -302 store success score @s optn.disable_dynamic_triggers.player_info unless score @s optn.disable_dynamic_triggers.player_info matches 1
execute if score @s options matches -302 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -302 if score @s optn.disable_dynamic_triggers.player_info matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Player Info Triggers",color:"yellow"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -302 if score @s optn.disable_dynamic_triggers.player_info matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Player Info Triggers",color:"yellow"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]

execute if score @s options matches -303 store success score @s optn.disable_dynamic_triggers.punishments unless score @s optn.disable_dynamic_triggers.punishments matches 1
execute if score @s options matches -303 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -303 if score @s optn.disable_dynamic_triggers.punishments matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Punishment Triggers",color:"yellow"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -303 if score @s optn.disable_dynamic_triggers.punishments matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic Punishment Triggers",color:"yellow"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]

execute if score @s options matches -304 run scoreboard players add @s optn.experimental.speed_hack_indicator 1
execute if score @s options matches -304 unless score @s optn.experimental.speed_hack_indicator matches 1..2 run scoreboard players set @s optn.experimental.speed_hack_indicator 0
execute if score @s options matches -304 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -304 if score @s optn.experimental.speed_hack_indicator matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Speed Hack Detector (",color:"yellow",extra:[{text:"Experimental",bold:true,color:"gold"},")"]}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -304 if score @s optn.experimental.speed_hack_indicator matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Speed Hack Detector (",color:"yellow",extra:[{text:"Experimental",bold:true,color:"gold"},")"]}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -304 if score @s optn.experimental.speed_hack_indicator matches 2 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Speed Hack Detector (",color:"yellow",extra:[{text:"Experimental",bold:true,color:"gold"},")"]}," to ",{text:"Only Guest-Player ranks",bold:true,color:"yellow"},"!"]

# Moderator & up Options
execute if score @s options matches -401 store success score @s spectator_night_vision unless score @s spectator_night_vision matches 1
execute if score @s options matches -401 if score @s spectator_night_vision matches 0 run effect clear @s[gamemode=spectator] night_vision
execute if score @s options matches -401 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -401 if score @s spectator_night_vision matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Spectator Night Vision",color:"gold"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -401 if score @s spectator_night_vision matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Spectator Night Vision",color:"gold"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
scoreboard players reset @s[scores={spectator_night_vision=0}] spectator_night_vision

execute if score @s options matches -402 store success score @s optn.disable_spectator_portals unless score @s optn.disable_spectator_portals matches 1
execute if score @s options matches -402 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -402 if score @s optn.disable_spectator_portals matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Spectator Portals",color:"gold"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -402 if score @s optn.disable_spectator_portals matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Spectator Portals",color:"gold"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]

execute if score @s options matches -403 store success score @s optn.disable_dynamic_triggers.tp unless score @s optn.disable_dynamic_triggers.tp matches 1
execute if score @s options matches -403 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -403 if score @s optn.disable_dynamic_triggers.tp matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic TP Triggers",color:"yellow"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -403 if score @s optn.disable_dynamic_triggers.tp matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Dynamic TP Triggers",color:"yellow"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]

# Sr Moderator & up Options
execute if score @s options matches -501 run scoreboard players add @s send_extra_debug_info 1
execute if score @s options matches -501 unless score @s send_extra_debug_info matches 1..2 run scoreboard players set @s send_extra_debug_info 0
execute if score @s options matches -501 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches -501 if score @s send_extra_debug_info matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Send Extra Operator Info",color:"#FB6F00"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -501 if score @s send_extra_debug_info matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Send Extra Operator Info",color:"#FB6F00"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -501 if score @s send_extra_debug_info matches 2 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Send Extra Operator Info",color:"#FB6F00"}," to ",{text:"Extra Annoying (Dev)",bold:true,color:"yellow"},"!"]
execute if score @s options matches -501 unless score @s send_extra_debug_info matches 2 run scoreboard players reset @s report
scoreboard players reset @s[scores={send_extra_debug_info=0}] send_extra_debug_info

execute if score @s options matches -502 run function pandamium:player/deop
execute if score @s options matches -502 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," You are now ",{text:"de-opped",color:"aqua"},"!"]

execute if score @s options matches -503 run function pandamium:player/op
execute if score @s options matches -503 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," You are now ",{text:"opped",color:"aqua"},"!"]

# Server Options
execute if score @s options matches -601 store success score <anti_bot_mode> global unless score <anti_bot_mode> global matches 1
execute if score @s options matches -601 run function pandamium:triggers/options/print_menu/server
execute if score @s options matches -601 if score <anti_bot_mode> global matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Anti-Bot Mode",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -601 if score <anti_bot_mode> global matches 0 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," disabled ",{text:"Anti-Bot Mode",bold:true},"!"]
execute if score @s options matches -601 if score <anti_bot_mode> global matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Anti-Bot Mode",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -601 if score <anti_bot_mode> global matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," enabled ",{text:"Anti-Bot Mode",bold:true},"!"]
execute if score @s options matches -601 if score <anti_bot_mode> global matches 0 run scoreboard players reset <anti_bot_mode> global

execute if score @s options matches -602 store success score <disable_tnt_auto_defuse> global unless score <disable_tnt_auto_defuse> global matches 1
execute if score @s options matches -602 run function pandamium:triggers/options/print_menu/server
execute if score @s options matches -602 if score <disable_tnt_auto_defuse> global matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Auto Defuse TNT",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -602 if score <disable_tnt_auto_defuse> global matches 0 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," enabled ",{text:"Auto Defuse TNT",bold:true},"!"]
execute if score @s options matches -602 if score <disable_tnt_auto_defuse> global matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Auto Defuse TNT",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -602 if score <disable_tnt_auto_defuse> global matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," disabled ",{text:"Auto Defuse TNT",bold:true},"!"]
execute if score @s options matches -602 if score <disable_tnt_auto_defuse> global matches 0 run scoreboard players reset <disable_tnt_auto_defuse> global

execute if score @s options matches -603 store result score <gamerule_mob_griefing> variable run gamerule mobGriefing
execute if score @s options matches -603 store success score <gamerule_mob_griefing> variable unless score <gamerule_mob_griefing> variable matches 1
execute if score @s options matches -603 if score <gamerule_mob_griefing> variable matches 0 run gamerule mobGriefing false
execute if score @s options matches -603 if score <gamerule_mob_griefing> variable matches 1 run gamerule mobGriefing true
execute if score @s options matches -603 run function pandamium:triggers/options/print_menu/server
execute if score @s options matches -603 if score <gamerule_mob_griefing> variable matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Vanilla Mob Griefing Rule",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -603 if score <gamerule_mob_griefing> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," disabled ",{text:"Vanilla Mob Griefing Rule",bold:true},"!"]
execute if score @s options matches -603 if score <gamerule_mob_griefing> variable matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Vanilla Mob Griefing Rule",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -603 if score <gamerule_mob_griefing> variable matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," enabled ",{text:"Vanilla Mob Griefing Rule",bold:true},"!"]

execute if score @s options matches -604 store success score <server_optn.carpet_mod_enabled> global unless score <server_optn.carpet_mod_enabled> global matches 1
execute if score @s options matches -604 if score <server_optn.carpet_mod_enabled> global matches 0 run scoreboard players set <disable_tnt_auto_defuse> global 0
execute if score @s options matches -604 if score <server_optn.carpet_mod_enabled> global matches 1 run scoreboard players set <disable_tnt_auto_defuse> global 1
execute if score @s options matches -604 run function pandamium:triggers/options/print_menu/server
execute if score @s options matches -604 if score <server_optn.carpet_mod_enabled> global matches 0 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Carpet Mod",color:"aqua"}," to ",{text:"Off",bold:true,color:"yellow"},"!"]
execute if score @s options matches -604 if score <server_optn.carpet_mod_enabled> global matches 0 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," disabled ",{text:"Carpet Mod",bold:true},"!"]
execute if score @s options matches -604 if score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," Set option ",{text:"Carpet Mod",color:"aqua"}," to ",{text:"On",bold:true,color:"yellow"},"!"]
execute if score @s options matches -604 if score <server_optn.carpet_mod_enabled> global matches 1 run tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"}," enabled ",{text:"Carpet Mod",bold:true},"!"]

# Supporter (or equivalent permissions) Options 
execute if score @s options matches -701 store success score @s optn.trail_particles_when_stationary unless score @s optn.trail_particles_when_stationary matches 1
execute if score @s options matches -701 run trigger particles

execute if score @s options matches -702 store success score @s optn.do_projectile_trails unless score @s optn.do_projectile_trails matches 1
execute if score @s options matches -702 run trigger particles

# Disable Donator Migration Notice
execute if score @s options matches -10001 if score @s donator_migration_notice matches 1 run tellraw @s [{text:"",color:"green"},{text:"[Options]",color:"dark_green"}," You will no longer see the ",{text:"Patreon migration notice",color:"aqua"}," when you join!"]
execute if score @s options matches -10001 if score @s donator_migration_notice matches 1 run scoreboard players set @s donator_migration_notice 0
