# Temporary
scoreboard objectives add new_world_tp dummy

scoreboard objectives add id dummy
scoreboard objectives add global dummy
scoreboard objectives add variable dummy
execute unless score <next_id> global matches 2.. run scoreboard players set <next_id> global 2
execute unless score <next_auto_jail_log_index> global matches 1..20 run scoreboard players set <next_auto_jail_log_index> global 1

scoreboard objectives add gameplay_perms dummy
scoreboard objectives add staff_perms dummy
scoreboard objectives add staff_alt dummy
scoreboard objectives add jailed dummy
scoreboard objectives add cheater dummy
scoreboard objectives add pre_jail_pos_x dummy
scoreboard objectives add pre_jail_pos_y dummy
scoreboard objectives add pre_jail_pos_z dummy
scoreboard objectives add pre_jail_pos_d dummy

scoreboard objectives add sidebar dummy {"text":"Pandamium","color":"blue","bold":true}
scoreboard objectives setdisplay sidebar sidebar

# Temporary
scoreboard objectives add save_mob.spawn trigger

scoreboard objectives add spawn trigger
scoreboard objectives add respawn trigger
scoreboard objectives add options trigger

scoreboard objectives add vote trigger
scoreboard objectives add vote_shop trigger
scoreboard objectives add discord trigger
scoreboard objectives add playtime trigger
scoreboard objectives add clear trigger
scoreboard objectives add world_info trigger

scoreboard objectives add homes trigger
scoreboard objectives add home trigger
scoreboard objectives add sethome trigger
scoreboard objectives add delhome trigger

scoreboard objectives add tpa trigger

scoreboard objectives add parkour trigger
scoreboard objectives add parkour_end trigger

scoreboard objectives add particles trigger
scoreboard objectives add pose trigger
scoreboard objectives add frame_visibility trigger
scoreboard objectives add hat trigger
scoreboard objectives add item_font trigger
scoreboard objectives add sign_font trigger
scoreboard objectives add leaderboards trigger
scoreboard objectives add donator_area trigger

scoreboard objectives add staff_menu trigger
scoreboard objectives add jail trigger
scoreboard objectives add unjail trigger
scoreboard objectives add kick trigger
scoreboard objectives add ban trigger
scoreboard objectives add restart trigger
scoreboard objectives add toggle_spectator trigger
scoreboard objectives add inventory trigger
scoreboard objectives add enderchest trigger
scoreboard objectives add item_clear trigger
scoreboard objectives add get_guidebook trigger
scoreboard objectives add tp trigger
scoreboard objectives add take_ec trigger
scoreboard objectives add take_inv trigger
scoreboard objectives add spawnpoint trigger
scoreboard objectives add take_binding trigger
scoreboard objectives add staff_world trigger
scoreboard objectives add pre_jail_tp trigger
scoreboard objectives add player_info trigger
scoreboard objectives add container trigger
scoreboard objectives add hide trigger
scoreboard objectives add auto_jails trigger
scoreboard objectives add switch_dimension trigger


scoreboard objectives add disable_tp_rqsts dummy
scoreboard objectives add disable_keep_inv dummy
scoreboard objectives add disable_insomnia dummy
scoreboard objectives add attack_indicator dummy
scoreboard objectives add hide_punishments dummy
scoreboard objectives add spectator_vision dummy
scoreboard objectives add hide_auto_msgs dummy

scoreboard objectives add votes dummy {"text":"Top Votes","color":"blue","bold":true}
scoreboard objectives add monthly_votes dummy {"text":"Monthly Votes","color":"blue","bold":true}
scoreboard objectives add vote_credits dummy

scoreboard objectives add playtime_ticks custom:play_time
scoreboard objectives add playtime_hours dummy {"text":"Top Playtime","color":"blue","bold":true}
scoreboard objectives add monthly_playtime_ticks custom:play_time
scoreboard objectives add monthly_playtime_hours dummy {"text":"Monthly Playtime","color":"blue","bold":true}
scoreboard objectives add online_ticks custom:play_time

scoreboard objectives add home_1_x dummy
scoreboard objectives add home_1_y dummy
scoreboard objectives add home_1_z dummy
scoreboard objectives add home_1_d dummy
scoreboard objectives add home_2_x dummy
scoreboard objectives add home_2_y dummy
scoreboard objectives add home_2_z dummy
scoreboard objectives add home_2_d dummy
scoreboard objectives add home_3_x dummy
scoreboard objectives add home_3_y dummy
scoreboard objectives add home_3_z dummy
scoreboard objectives add home_3_d dummy
scoreboard objectives add home_4_x dummy
scoreboard objectives add home_4_y dummy
scoreboard objectives add home_4_z dummy
scoreboard objectives add home_4_d dummy
scoreboard objectives add home_5_x dummy
scoreboard objectives add home_5_y dummy
scoreboard objectives add home_5_z dummy
scoreboard objectives add home_5_d dummy
scoreboard objectives add home_6_x dummy
scoreboard objectives add home_6_y dummy
scoreboard objectives add home_6_z dummy
scoreboard objectives add home_6_d dummy
scoreboard objectives add home_7_x dummy
scoreboard objectives add home_7_y dummy
scoreboard objectives add home_7_z dummy
scoreboard objectives add home_7_d dummy
scoreboard objectives add home_8_x dummy
scoreboard objectives add home_8_y dummy
scoreboard objectives add home_8_z dummy
scoreboard objectives add home_8_d dummy
scoreboard objectives add home_9_x dummy
scoreboard objectives add home_9_y dummy
scoreboard objectives add home_9_z dummy
scoreboard objectives add home_9_d dummy
scoreboard objectives add home_10_x dummy
scoreboard objectives add home_10_y dummy
scoreboard objectives add home_10_z dummy
scoreboard objectives add home_10_d dummy

scoreboard objectives add tpa_request dummy
scoreboard objectives add tpa_request_time dummy

scoreboard objectives add active_particles dummy
scoreboard objectives add death_particles dummy
scoreboard objectives add selected_player dummy
scoreboard objectives add hidden dummy

scoreboard objectives add pre_hide_pos_x dummy
scoreboard objectives add pre_hide_pos_y dummy
scoreboard objectives add pre_hide_pos_z dummy
scoreboard objectives add pre_hide_pos_d dummy

scoreboard objectives add spawnpoint_x dummy
scoreboard objectives add spawnpoint_y dummy
scoreboard objectives add spawnpoint_z dummy
scoreboard objectives add spawnpoint_dim dummy

scoreboard objectives add afk_last_x dummy
scoreboard objectives add afk_last_z dummy
scoreboard objectives add afk_time dummy

scoreboard objectives add leave_count custom:leave_game
scoreboard objectives add death_count deathCount
scoreboard objectives add time_since_rest custom:time_since_rest
scoreboard objectives add in_nether_spawn dummy
scoreboard objectives add in_spawn dummy
scoreboard objectives add in_dimension dummy
scoreboard objectives add in_jail dummy
scoreboard objectives add alive dummy
scoreboard objectives add portal_ticks dummy

scoreboard objectives add parkour_ticks dummy
scoreboard objectives add parkour_checkpoint dummy
scoreboard objectives add parkour_best_time dummy
scoreboard objectives add parkour.used_ender_pearl used:ender_pearl
scoreboard objectives add parkour.aviate custom:aviate_one_cm

scoreboard objectives add temp_1 dummy


scoreboard players reset * variable

scoreboard players reset * spawn
scoreboard players reset * parkour
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
scoreboard players reset * world_info

scoreboard players reset * parkour_end

scoreboard players reset * particles
scoreboard players reset * clear
scoreboard players reset * hat
scoreboard players reset * pose
scoreboard players reset * frame_visibility
scoreboard players reset * item_font
scoreboard players reset * sign_font

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
scoreboard players reset * take_ec
scoreboard players reset * take_inv
scoreboard players reset * take_binding
scoreboard players reset * spawnpoint
scoreboard players reset * pre_jail_tp
scoreboard players reset * player_info
scoreboard players reset * container
scoreboard players reset * hide
scoreboard players reset * auto_jails
scoreboard players reset * switch_dimension

# Do not reset [staff_perms] or [staff_alt]
scoreboard players reset * gameplay_perms
scoreboard players reset * leave_count
scoreboard players reset * online_ticks
scoreboard players reset * in_nether_spawn
scoreboard players reset * in_dimension
scoreboard players reset * in_jail
scoreboard players reset * alive
scoreboard players reset * portal_ticks
scoreboard players reset * temp_1
scoreboard players reset * selected_player


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
team add elder+
team modify elder+ prefix "Elder | "
team modify elder+ color aqua
team modify elder+ seeFriendlyInvisibles false

team add veteran
team modify veteran prefix "Veteran | "
team modify veteran color dark_aqua
team modify veteran seeFriendlyInvisibles false
team add veteran+
team modify veteran+ prefix "Veteran | "
team modify veteran+ color dark_aqua
team modify veteran+ seeFriendlyInvisibles false

team add elite
team modify elite prefix "Elite | "
team modify elite color blue
team modify elite seeFriendlyInvisibles false
team add elite+
team modify elite+ prefix "Elite | "
team modify elite+ color blue
team modify elite+ seeFriendlyInvisibles false

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
team add helper+
team modify helper+ prefix "Helper | "
team modify helper+ color yellow
team modify helper+ seeFriendlyInvisibles false

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


execute in pandamium:staff_world run forceload add -1 -1 0 0
execute in pandamium:staff_world unless block 6 64 3 oak_wall_sign run setblock 6 64 3 oak_wall_sign[facing=west]{Text2:'{"text":"[Remove Lore]","bold":true,"clickEvent":{"action":"run_command","value":"/function pandamium:misc/jail_items/remove_lore_from_inventory"}}'}

scoreboard players set <ticks_per_hour> variable 72000
scoreboard players set <ticks_per_minute> variable 1200
scoreboard players set <ticks_per_second> variable 20
scoreboard players set <-1> variable -1
scoreboard players set <16> variable 16
scoreboard players set <32> variable 32
scoreboard players set <64> variable 64
scoreboard players set <60> variable 60


scoreboard players set <sidebar> global 0
scoreboard players set <sidebar_timer> global 0
scoreboard players set <auto_clear> global 36000
scoreboard players set <auto_message> global 0
scoreboard players set <restart_countdown> global -1
execute unless score <thunderstorms_timer> global = <thunderstorms_timer> global run scoreboard players set <thunderstorms_timer> global 432000


function pandamium:main_loop

function pandamium:misc/sidebar
schedule function pandamium:misc/auto_messages 60s
function pandamium:misc/item_clear/clear_netherrack
function pandamium:misc/map_specific/slow_loop
function pandamium:misc/remove_nbt/loop
function pandamium:misc/phantoms/loop
