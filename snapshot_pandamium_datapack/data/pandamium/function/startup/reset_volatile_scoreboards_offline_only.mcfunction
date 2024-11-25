# triggers
scoreboard players reset * spawn
scoreboard players reset * enderman_farm
scoreboard players reset * respawn
scoreboard players reset * vote
scoreboard players reset * rewards_shop
scoreboard players reset * discord
scoreboard players reset * guidebook
scoreboard players reset * home
scoreboard players reset * sethome
scoreboard players reset * delhome
scoreboard players reset * namehome
scoreboard players reset * homes
scoreboard players reset * tpa
scoreboard players reset * playtime
scoreboard players reset * leaderboards
scoreboard players reset * options
scoreboard players reset * world_info
scoreboard players reset * parkour
scoreboard players reset * parkour.quit
scoreboard players reset * parkour.restart
scoreboard players reset * parkour.warp.Forgotten_Caverns
scoreboard players reset * rtp
scoreboard players reset * sit
scoreboard players reset * afk
scoreboard players reset * mail
scoreboard players reset * search_players
#scoreboard players reset * help
scoreboard players reset * help.Mini_Blocks

scoreboard players reset * femail
scoreboard players reset * super_secret_trigger

scoreboard players reset * particles
scoreboard players reset * flair
scoreboard players reset * clear_inventory
scoreboard players reset * hat
scoreboard players reset * pose
scoreboard players reset * frame_visibility
scoreboard players reset * item_font
scoreboard players reset * sign_font
scoreboard players reset * enderchest

scoreboard players reset * staff_menu
scoreboard players reset * staff_world
scoreboard players reset * jail
scoreboard players reset * unjail
scoreboard players reset * kick
scoreboard players reset * ban
scoreboard players reset * restart_server
scoreboard players reset * reload_data_pack
scoreboard players reset * search_nearby
scoreboard players reset * toggle_spectator
scoreboard players reset * inspect_inventory
scoreboard players reset * inspect_enderchest
scoreboard players reset * item_clear
scoreboard players reset * tp
scoreboard players reset * take_enderchest
scoreboard players reset * take_inventory
scoreboard players reset * spawnpoint
scoreboard players reset * pre_jail_tp
scoreboard players reset * player_info
scoreboard players reset * player_info_v2
scoreboard players reset * inspect_container
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
scoreboard players reset * tablist_value

scoreboard players reset * idle.last_r0
scoreboard players reset * idle.last_r1
scoreboard players reset * idle.time

scoreboard players reset * selected_player
scoreboard players reset * selected_block.x
scoreboard players reset * selected_block.y
scoreboard players reset * selected_block.z
scoreboard players reset * font.gradient.left_colour

scoreboard players reset * detect.leave_game
scoreboard players reset * detect.time_since_death
scoreboard players reset * advancement.on_a_rail
scoreboard players reset * sneak_to_sit_time
scoreboard players reset * mail_data.unread_mails
scoreboard players reset * mail_data.unclaimed_items
scoreboard players reset * mail_data.drafts
scoreboard players reset * mail_data.inbox_cached
scoreboard players reset * mail_data.inbox_tab
scoreboard players reset * transient_equippable.items_equipped
scoreboard players reset * custom_dye.type
scoreboard players reset * custom_dye.off
scoreboard players reset * custom_dye.health
scoreboard players reset * custom_dye.biome_id
scoreboard players reset * custom_dye.fixed_color
scoreboard players reset * custom_dye.color_transition.start_red
scoreboard players reset * custom_dye.color_transition.start_green
scoreboard players reset * custom_dye.color_transition.start_blue
scoreboard players reset * custom_dye.color_transition.target_red
scoreboard players reset * custom_dye.color_transition.target_green
scoreboard players reset * custom_dye.color_transition.target_blue
scoreboard players reset * custom_dye.color_transition.current_red
scoreboard players reset * custom_dye.color_transition.current_green
scoreboard players reset * custom_dye.color_transition.current_blue
scoreboard players reset * custom_dye.color_transition.duration
scoreboard players reset * custom_dye.color_transition.time_since_change

scoreboard players reset * zooming_until
scoreboard players reset * just_dropped_mini_block_with_warning

scoreboard players reset * pronouns_type

scoreboard players reset * parkour_4.attempts
scoreboard players reset * parkour_4.falls
scoreboard players reset * parkour_4.jumps
scoreboard players reset * parkour_4.completions
scoreboard players reset * parkour_4.shortest_time.time
scoreboard players reset * parkour_4.shortest_time.falls
scoreboard players reset * parkour_4.fewest_falls.time
scoreboard players reset * parkour_4.fewest_falls.falls

# set player_cache default macro arguments
data remove storage pandamium:cache macros
function pandamium:impl/database/cache/set_default_macro_arguments

# delete unsent/unsaved mail
function pandamium:impl/database/mail/prune_and_reindex/main

# clear stored click-events
data remove storage pandamium.db.click_events:data entries[]
data modify storage pandamium.db.click_events:data click_event_id_indexes set value {}
data modify storage pandamium.db.click_events:data last_click_event_id set value 0
