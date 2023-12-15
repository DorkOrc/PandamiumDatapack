# triggers (DO NOT RESET [guidebook])
scoreboard players reset * spawn
scoreboard players reset * enderman_farm
scoreboard players reset * respawn
scoreboard players reset * vote
scoreboard players reset * rewards_shop
scoreboard players reset * discord
scoreboard players reset * home
scoreboard players reset * sethome
scoreboard players reset * delhome
scoreboard players reset * homes
scoreboard players reset * tpa
scoreboard players reset * playtime
scoreboard players reset * leaderboards
scoreboard players reset * options
scoreboard players reset * world_info
scoreboard players reset * parkour
scoreboard players reset * parkour.quit
scoreboard players reset * parkour.restart
scoreboard players reset * rtp
scoreboard players reset * sit
scoreboard players reset * afk

scoreboard players reset * particles
scoreboard players reset * flair
scoreboard players reset * clear_inventory
scoreboard players reset * hat
scoreboard players reset * pose
scoreboard players reset * frame_visibility
scoreboard players reset * item_font
scoreboard players reset * sign_font

scoreboard players reset * staff_menu
scoreboard players reset * staff_world
scoreboard players reset * jail
scoreboard players reset * unjail
scoreboard players reset * kick
scoreboard players reset * ban
scoreboard players reset * restart
scoreboard players reset * toggle_spectator
scoreboard players reset * inventory
scoreboard players reset * enderchest
scoreboard players reset * item_clear
scoreboard players reset * tp
scoreboard players reset * take_enderchest
scoreboard players reset * take_inventory
scoreboard players reset * take_bound_items
scoreboard players reset * spawnpoint
scoreboard players reset * pre_jail_tp
scoreboard players reset * player_info
scoreboard players reset * player_info_v2
scoreboard players reset * container
scoreboard players reset * hide
scoreboard players reset * auto_actions_log
scoreboard players reset * switch_dimension
scoreboard players reset * gift

# misc
scoreboard players reset * gameplay_perms
scoreboard players reset * staff_perms
scoreboard players reset * available_homes

scoreboard players reset * tpa_request.sender_id
scoreboard players reset * tpa_request.time
scoreboard players reset * rtp_cooldown
scoreboard players reset * online_ticks
scoreboard players reset * portal_ticks
scoreboard players reset * suspicious_ip

scoreboard players reset * idle.last_r0
scoreboard players reset * idle.last_r1
scoreboard players reset * idle.time

scoreboard players reset * selected_player
scoreboard players reset * selected_block.x
scoreboard players reset * selected_block.y
scoreboard players reset * selected_block.z
scoreboard players reset * font.gradient.left_colour

scoreboard players reset * detect.leave_game
scoreboard players reset * advancement.on_a_rail
scoreboard players reset * sneak_to_sit_time

# delete unsent/unsaved mail
function pandamium:impl/database/mail/prune_and_reindex/main

# clear unflushed and expired stored click-events
data remove storage pandamium:click_events entries[]
