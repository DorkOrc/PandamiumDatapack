scoreboard objectives add id dummy {"text":"id","color":"gold","underlined":true}
scoreboard objectives add global dummy
scoreboard objectives add variable dummy
scoreboard objectives add constant dummy
execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> global 2
execute unless score <next_auto_action_id> global matches 1..20 run scoreboard players set <next_auto_action_id> global 1

scoreboard objectives add gameplay_perms dummy
scoreboard objectives add donator dummy {"text":"donator","color":"dark_purple"}
scoreboard objectives add staff_perms dummy
scoreboard objectives add staff_alt dummy
scoreboard objectives add jailed dummy
scoreboard objectives add cheater dummy
scoreboard objectives add pre_jail_pos_x dummy
scoreboard objectives add pre_jail_pos_y dummy
scoreboard objectives add pre_jail_pos_z dummy
scoreboard objectives add pre_jail_pos_d dummy
scoreboard objectives add suspicious_ip dummy

scoreboard objectives add sidebar dummy {"text":"Pandamium","color":"blue","bold":true}
scoreboard objectives setdisplay sidebar sidebar

# Triggers
scoreboard objectives add spawn trigger {"text":"spawn","color":"gray"}
scoreboard objectives add enderman_farm trigger {"text":"enderman_farm","color":"gray"}
scoreboard objectives add respawn trigger {"text":"respawn","color":"gray"}
scoreboard objectives add options trigger {"text":"options","color":"gray"}

scoreboard objectives add vote trigger {"text":"vote","color":"gray"}
scoreboard objectives add vote_shop trigger {"text":"vote_shop","color":"gray"}
scoreboard objectives add gift trigger {"text":"gift","color":"gray"}
scoreboard objectives add discord trigger {"text":"discord","color":"gray"}
scoreboard objectives add playtime trigger {"text":"playtime","color":"gray"}
scoreboard objectives add clear_inventory trigger {"text":"clear_inventory","color":"gray"}
scoreboard objectives add world_info trigger {"text":"world_info","color":"gray"}
scoreboard objectives add leaderboards trigger {"text":"leaderboards","color":"gray"}

scoreboard objectives add homes trigger {"text":"homes","color":"gray"}
scoreboard objectives add home trigger {"text":"home","color":"gray"}
scoreboard objectives add sethome trigger {"text":"sethome","color":"gray"}
scoreboard objectives add delhome trigger {"text":"delhome","color":"gray"}

scoreboard objectives add tpa trigger {"text":"tpa","color":"gray"}

scoreboard objectives add parkour trigger {"text":"parkour","color":"gray"}
scoreboard objectives add parkour.quit trigger {"text":"parkour.quit","color":"gray"}
scoreboard objectives add parkour.restart trigger {"text":"parkour.restart","color":"gray"}

scoreboard objectives add particles trigger {"text":"particles","color":"gray"}
scoreboard objectives add pose trigger {"text":"pose","color":"gray"}
scoreboard objectives add frame_visibility trigger {"text":"frame_visibility","color":"gray"}
scoreboard objectives add hat trigger {"text":"hat","color":"gray"}
scoreboard objectives add item_font trigger {"text":"item_font","color":"gray"}
scoreboard objectives add sign_font trigger {"text":"sign_font","color":"gray"}
scoreboard objectives add donator_area trigger {"text":"donator_area","color":"gray"}

scoreboard objectives add staff_menu trigger {"text":"staff_menu","color":"gray"}
scoreboard objectives add jail trigger {"text":"jail","color":"gray"}
scoreboard objectives add unjail trigger {"text":"unjail","color":"gray"}
scoreboard objectives add kick trigger {"text":"kick","color":"gray"}
scoreboard objectives add ban trigger {"text":"ban","color":"gray"}
scoreboard objectives add restart trigger {"text":"restart","color":"gray"}
scoreboard objectives add toggle_spectator trigger {"text":"toggle_spectator","color":"gray"}
scoreboard objectives add inventory trigger {"text":"inventory","color":"gray"}
scoreboard objectives add enderchest trigger {"text":"enderchest","color":"gray"}
scoreboard objectives add item_clear trigger {"text":"item_clear","color":"gray"}
scoreboard objectives add guidebook trigger {"text":"guidebook","color":"gray"}
scoreboard objectives add tp trigger {"text":"tp","color":"gray"}
scoreboard objectives add take_enderchest trigger {"text":"take_enderchest","color":"gray"}
scoreboard objectives add take_inventory trigger {"text":"take_inventory","color":"gray"}
scoreboard objectives add take_bound_items trigger {"text":"take_bound_items","color":"gray"}
scoreboard objectives add spawnpoint trigger {"text":"spawnpoint","color":"gray"}
scoreboard objectives add staff_world trigger {"text":"staff_world","color":"gray"}
scoreboard objectives add pre_jail_tp trigger {"text":"pre_jail_tp","color":"gray"}
scoreboard objectives add player_info trigger {"text":"player_info","color":"gray"}
scoreboard objectives add container trigger {"text":"container","color":"gray"}
scoreboard objectives add hide trigger {"text":"hide","color":"gray"}
scoreboard objectives add auto_actions_log trigger {"text":"auto_actions_log","color":"gray"}
scoreboard objectives add switch_dimension trigger {"text":"switch_dimension","color":"gray"}

# temporary triggers
scoreboard objectives add save_mob.spawn trigger {"text":"save_mob.spawn","color":"gray"}

# Options
scoreboard objectives add disable_tpa_requests dummy
scoreboard objectives add disable_keep_inventory dummy
scoreboard objectives add disable_insomnia dummy
scoreboard objectives add disable_attack_indicator dummy
scoreboard objectives add hide_parkour_timer dummy
scoreboard objectives add show_playtime_days dummy
scoreboard objectives add hide_auto_messages dummy
scoreboard objectives add disable_donator_prefix dummy

scoreboard objectives add silent_punishments dummy
scoreboard objectives add spectator_night_vision dummy
scoreboard objectives add disable_spectator_portals dummy
scoreboard objectives add send_extra_debug_info dummy

# Server Stats
scoreboard objectives add votes dummy {"text":"votes","color":"gold"}
scoreboard objectives add monthly_votes dummy {"text":"monthly_votes","color":"gold"}
scoreboard objectives add vote_credits dummy {"text":"vote_credits","color":"gold"}

scoreboard objectives add playtime_ticks custom:play_time {"text":"playtime_ticks","color":"gold"}
scoreboard objectives add monthly_playtime_ticks custom:play_time {"text":"monthly_playtime_ticks","color":"gold"}
scoreboard objectives add online_ticks custom:play_time

# Homes
scoreboard objectives add home_1_x dummy {"text":"home_1_x","color":"green"}
scoreboard objectives add home_1_y dummy
scoreboard objectives add home_1_z dummy
scoreboard objectives add home_1_d dummy
scoreboard objectives add home_2_x dummy {"text":"home_2_x","color":"green"}
scoreboard objectives add home_2_y dummy
scoreboard objectives add home_2_z dummy
scoreboard objectives add home_2_d dummy
scoreboard objectives add home_3_x dummy {"text":"home_3_x","color":"green"}
scoreboard objectives add home_3_y dummy
scoreboard objectives add home_3_z dummy
scoreboard objectives add home_3_d dummy
scoreboard objectives add home_4_x dummy {"text":"home_4_x","color":"green"}
scoreboard objectives add home_4_y dummy
scoreboard objectives add home_4_z dummy
scoreboard objectives add home_4_d dummy
scoreboard objectives add home_5_x dummy {"text":"home_5_x","color":"green"}
scoreboard objectives add home_5_y dummy
scoreboard objectives add home_5_z dummy
scoreboard objectives add home_5_d dummy
scoreboard objectives add home_6_x dummy {"text":"home_6_x","color":"green"}
scoreboard objectives add home_6_y dummy
scoreboard objectives add home_6_z dummy
scoreboard objectives add home_6_d dummy
scoreboard objectives add home_7_x dummy {"text":"home_7_x","color":"green"}
scoreboard objectives add home_7_y dummy
scoreboard objectives add home_7_z dummy
scoreboard objectives add home_7_d dummy
scoreboard objectives add home_8_x dummy {"text":"home_8_x","color":"green"}
scoreboard objectives add home_8_y dummy
scoreboard objectives add home_8_z dummy
scoreboard objectives add home_8_d dummy
scoreboard objectives add home_9_x dummy {"text":"home_9_x","color":"green"}
scoreboard objectives add home_9_y dummy
scoreboard objectives add home_9_z dummy
scoreboard objectives add home_9_d dummy
scoreboard objectives add home_10_x dummy {"text":"home_10_x","color":"green"}
scoreboard objectives add home_10_y dummy
scoreboard objectives add home_10_z dummy
scoreboard objectives add home_10_d dummy

# Atrributes
scoreboard objectives add time_since_rest custom:time_since_rest
scoreboard objectives add portal_ticks dummy

scoreboard objectives add selected_player dummy
scoreboard objectives add in_dimension dummy

scoreboard objectives add tpa_request dummy
scoreboard objectives add tpa_request_time dummy

scoreboard objectives add gift_cooldown dummy

scoreboard objectives add active_particles dummy
scoreboard objectives add death_particles dummy

scoreboard objectives add in_jail dummy
scoreboard objectives add hidden dummy
scoreboard objectives add pre_hide_pos_x dummy
scoreboard objectives add pre_hide_pos_y dummy
scoreboard objectives add pre_hide_pos_z dummy
scoreboard objectives add pre_hide_pos_d dummy

scoreboard objectives add spawnpoint_x dummy
scoreboard objectives add spawnpoint_y dummy
scoreboard objectives add spawnpoint_z dummy
scoreboard objectives add spawnpoint_d dummy

scoreboard objectives add track_afk dummy
scoreboard objectives add afk_last_x dummy
scoreboard objectives add afk_last_z dummy
scoreboard objectives add afk_time dummy

# On Join (set to 1 to do something when a player joins)
scoreboard objectives add on_join.take_items dummy
scoreboard objectives add on_join.tp_to_spawn dummy

# Detection
scoreboard objectives add detect.leave_game custom:leave_game
scoreboard objectives add detect.die deathCount
scoreboard objectives add detect.use.ender_pearl used:ender_pearl
scoreboard objectives add detect.use.trident used:trident
scoreboard objectives add detect.use.wet_sponge used:wet_sponge
scoreboard objectives add detect.aviate custom:aviate_one_cm
scoreboard objectives add detect.take_damage custom:damage_taken
scoreboard objectives add detect.advancement.on_a_rail custom:minecart_one_cm

scoreboard objectives add parkour.timer_ticks dummy
scoreboard objectives add parkour.checkpoint dummy
scoreboard objectives add parkour.leaderboard_blacklist dummy
scoreboard objectives add parkour.node_id dummy
scoreboard objectives add parkour_1.best_time dummy
scoreboard objectives add parkour_1.leaderboard dummy ["",{"text":"Caves & Cliffs Parkour","bold":true,"color":"blue"},{"text":" (-sec)","color":"gray"}]
scoreboard objectives add parkour_2.best_time dummy
scoreboard objectives add parkour_2.leaderboard dummy ["",{"text":"Monstrosity Parkour","bold":true,"color":"blue"},{"text":" (-sec)","color":"gray"}]
scoreboard objectives add parkour_2.saved_time dummy
scoreboard objectives add parkour_2.saved_checkpoint dummy
scoreboard objectives add parkour_2.saved_x dummy
scoreboard objectives add parkour_2.saved_y dummy
scoreboard objectives add parkour_2.saved_z dummy

# Miscellaneous
scoreboard objectives add temp_1 dummy

# Reset Volatile Scoreboards
scoreboard players reset * variable

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

scoreboard players reset * gameplay_perms
scoreboard players reset * staff_perms
scoreboard players reset * online_ticks
scoreboard players reset * in_dimension
scoreboard players reset * in_jail
scoreboard players reset * portal_ticks
scoreboard players reset * temp_1
scoreboard players reset * selected_player
scoreboard players reset * suspicious_ip
scoreboard players reset * tpa_request_time

scoreboard players reset * detect.leave_game
scoreboard players reset * detect.die
scoreboard players reset * detect.use.ender_pearl
scoreboard players reset * detect.use.trident
scoreboard players reset * detect.use.wet_sponge
scoreboard players reset * detect.aviate
scoreboard players reset * detect.take_damage
scoreboard players reset * detect.advancement.on_a_rail
scoreboard players reset * detect.bookshelf_dupe_patch_counter

# Teams
team add guest
team modify guest prefix "Guest | "
team modify guest color gray
team modify guest seeFriendlyInvisibles false

team add player
team modify player prefix "Player | "
team modify player color green
team modify player seeFriendlyInvisibles false

team add member
team modify member prefix "Member | "
team modify member color dark_green
team modify member seeFriendlyInvisibles false

team add elder
team modify elder prefix "Elder | "
team modify elder color aqua
team modify elder seeFriendlyInvisibles false

team add veteran
team modify veteran prefix "Veteran | "
team modify veteran color dark_aqua
team modify veteran seeFriendlyInvisibles false

team add elite
team modify elite prefix "Elite | "
team modify elite color blue
team modify elite seeFriendlyInvisibles false

team add donator
team modify donator prefix "Donator | "
team modify donator color dark_purple
team modify donator seeFriendlyInvisibles false

team add vip
team modify vip prefix "VIP | "
team modify vip color dark_blue
team modify vip seeFriendlyInvisibles false

team add helper
team modify helper prefix "Helper | "
team modify helper color yellow
team modify helper seeFriendlyInvisibles false

team add mod
team modify mod prefix "Mod | "
team modify mod color gold
team modify mod seeFriendlyInvisibles false

team add srmod
team modify srmod prefix [{"text":"Sr. Mod","bold":true},{"text":" | ","bold":false}]
team modify srmod color gold
team modify srmod seeFriendlyInvisibles false

team add admin
team modify admin prefix [{"text":"Admin","bold":true},{"text":" | ","bold":false}]
team modify admin color red
team modify admin seeFriendlyInvisibles false

team add owner
team modify owner prefix [{"text":"Owner","bold":true},{"text":" | ","bold":false}]
team modify owner color dark_red
team modify owner seeFriendlyInvisibles false

team add gray_color
team modify gray_color color gray
team join gray_color Players:
team join gray_color Mobs:
team join gray_color Items:
team join gray_color MobCap:

team add dragon_fight
team modify dragon_fight friendlyFire false

# Forceload Staff World Platform
execute in pandamium:staff_world run forceload add -1 -1 0 0
execute in pandamium:staff_world unless block 6 64 3 oak_wall_sign run setblock 6 64 3 oak_wall_sign[facing=west]{Text2:'{"text":"[Restore Lore]","bold":true,"clickEvent":{"action":"run_command","value":"/function pandamium:misc/jail_items/restore_lore/main"}}'}

# Useful Constants
scoreboard players set #ticks_per_day constant 1728000
scoreboard players set #ticks_per_hour constant 72000
scoreboard players set #ticks_per_minute constant 1200
scoreboard players set #ticks_per_second constant 20
scoreboard players set #-1 constant -1
scoreboard players set #60 constant 60
scoreboard players set #85 constant 85
scoreboard players set #100 constant 100

# Global Counters
scoreboard players set <item_clear_timer> global 36000
scoreboard players set <next_auto_message> global 0
scoreboard players set <restart_countdown> global -1
execute unless score <thunderstorms_timer> global = <thunderstorms_timer> global run scoreboard players set <thunderstorms_timer> global 432000

# Function Loops
function pandamium:main_loop

function pandamium:misc/sidebar
schedule function pandamium:misc/leaderboards/update_loop 300s
schedule function pandamium:misc/auto_messages 60s
function pandamium:misc/item_clear/clear_netherrack_and_ender_pearls
function pandamium:misc/map_specific/fake_blocks/loop
function pandamium:misc/map_specific/main_loop
function pandamium:misc/map_specific/tick_loop
function pandamium:misc/remove_nbt/loop
function pandamium:misc/phantoms/loop
