scoreboard players reset * variable

# Triggers
scoreboard players reset * spawn
scoreboard players reset * enderman_farm
scoreboard players reset * respawn
scoreboard players reset * vote
scoreboard players reset * vote_shop
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
scoreboard players reset * save_mob.spawn
scoreboard players reset * rtp
scoreboard players reset * sit
scoreboard players reset * afk

scoreboard players reset * particles
scoreboard players reset * clear_inventory
scoreboard players reset * hat
scoreboard players reset * pose
scoreboard players reset * frame_visibility
scoreboard players reset * item_font
scoreboard players reset * sign_font

# (do not reset [guidebook])
scoreboard players reset * staff_menu
scoreboard players reset * staff_world
scoreboard players reset * donator_area
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
scoreboard players reset * container
scoreboard players reset * hide
scoreboard players reset * auto_actions_log
scoreboard players reset * switch_dimension
scoreboard players reset * gift

# Misc
execute unless entity @a[limit=1] run scoreboard players reset * tpa_request.sender_id
execute unless entity @a[limit=1] run scoreboard players reset * tpa_request.time
execute unless entity @a[limit=1] run scoreboard players reset * rtp_cooldown
execute unless entity @a[limit=1] run scoreboard players reset * online_ticks
scoreboard players reset * portal_ticks
execute unless entity @a[limit=1] run scoreboard players reset * in_dimension
scoreboard players reset * gameplay_perms
scoreboard players reset * staff_perms
scoreboard players reset * suspicious_ip
scoreboard players reset * temp_1

execute unless entity @a[limit=1] run scoreboard players reset * idle.last_r0
execute unless entity @a[limit=1] run scoreboard players reset * idle.last_r1
execute unless entity @a[limit=1] run scoreboard players reset * idle.time

execute unless entity @a[limit=1] run scoreboard players reset * selected_player
execute unless entity @a[limit=1] run scoreboard players reset * selected_block.x
execute unless entity @a[limit=1] run scoreboard players reset * selected_block.y
execute unless entity @a[limit=1] run scoreboard players reset * selected_block.z
execute unless entity @a[limit=1] run scoreboard players reset * font.gradient.left_index

execute unless entity @a[limit=1] run scoreboard players reset * detect.leave_game
execute if score <dev_environment> global matches 1 run scoreboard players reset @a detect.leave_game
scoreboard players reset * detect.die
scoreboard players reset * detect.use.ender_pearl
scoreboard players reset * detect.use.trident
scoreboard players reset * detect.use.wet_sponge
scoreboard players reset * detect.aviate
scoreboard players reset * detect.take_damage
scoreboard players reset * detect.advancement.on_a_rail
scoreboard players reset * detect.bookshelf_dupe_patch_counter
scoreboard players reset * detect.sneak_to_sit_time
