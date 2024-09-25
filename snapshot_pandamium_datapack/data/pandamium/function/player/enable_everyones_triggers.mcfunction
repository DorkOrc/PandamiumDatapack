scoreboard players enable @a super_secret_trigger
scoreboard players enable KittyAcel femail
scoreboard players enable @a vote_shop
execute if score <dev_environment> global matches 1 run scoreboard players enable @a[scores={custom_dye.type=1..},predicate=pandamium:player/can_enable_custom_dye] dye.toggle

scoreboard players enable @a spawn
scoreboard players enable @a enderman_farm
scoreboard players enable @a parkour
scoreboard players enable @a respawn
scoreboard players enable @a options
scoreboard players enable @a vote
scoreboard players enable @a rewards_shop
scoreboard players enable @a discord
scoreboard players enable @a home
scoreboard players enable @a sethome
scoreboard players enable @a delhome
scoreboard players enable @a namehome
scoreboard players enable @a playtime
scoreboard players enable @a tpa
scoreboard players enable @a homes
scoreboard players enable @a clear_inventory
scoreboard players enable @a world_info
scoreboard players enable @a gift
scoreboard players enable @a leaderboards
scoreboard players enable @a rtp
scoreboard players enable @a sit
scoreboard players enable @a afk
scoreboard players enable @a mail
scoreboard players enable @a search_players

scoreboard players enable @a[scores={parkour.checkpoint=0..}] parkour.quit
scoreboard players enable @a[scores={parkour.checkpoint=0..}] parkour.restart
scoreboard players enable @a parkour.warp.Forgotten_Caverns

scoreboard players enable @a particles
scoreboard players enable @a flair
scoreboard players enable @a pose
scoreboard players enable @a frame_visibility
scoreboard players enable @a hat
scoreboard players enable @a item_font
scoreboard players enable @a sign_font
scoreboard players enable @a enderchest
execute if score <dev_environment> global matches 1 run scoreboard players enable @a dye

scoreboard players enable @a[scores={staff_perms=1..}] staff_menu
scoreboard players enable @a[scores={staff_perms=1..}] jail
scoreboard players enable @a[scores={staff_perms=1..}] unjail
scoreboard players enable @a[scores={staff_perms=1..}] inspect_inventory
scoreboard players enable @a[scores={staff_perms=1..}] inspect_enderchest
scoreboard players enable @a[scores={staff_perms=1..}] guidebook
scoreboard players enable @a[scores={staff_perms=1..}] spawnpoint
scoreboard players enable @a[scores={staff_perms=1..}] kick
scoreboard players enable @a[scores={staff_perms=1..}] toggle_spectator
scoreboard players enable @a[scores={staff_perms=1..}] staff_world
scoreboard players enable @a[scores={staff_perms=1..}] restart_server
scoreboard players enable @a[scores={staff_perms=1..}] reload_data_pack
scoreboard players enable @a[scores={staff_perms=1..}] item_clear
scoreboard players enable @a[scores={staff_perms=1..}] player_info
scoreboard players enable @a[scores={staff_perms=1..}] player_info_v2
scoreboard players enable @a[scores={staff_perms=1..}] inspect_container
scoreboard players enable @a[scores={staff_perms=1..}] auto_actions_log
scoreboard players enable @a[scores={staff_perms=1..}] enderman_farm.config

scoreboard players enable @a[scores={staff_perms=2..}] ban
scoreboard players enable @a[scores={staff_perms=2..}] tp
scoreboard players enable @a[scores={staff_perms=2..}] pre_jail_tp
scoreboard players enable @a[scores={staff_perms=2..}] switch_dimension
scoreboard players enable @a[scores={staff_perms=2..}] search_nearby

scoreboard players enable @a[scores={staff_perms=3..}] take_enderchest
scoreboard players enable @a[scores={staff_perms=3..}] take_inventory
scoreboard players enable @a[scores={staff_perms=3..}] take_bound_items
scoreboard players enable @a[scores={staff_perms=3..}] hide
