
scoreboard objectives add id dummy
scoreboard objectives add variable dummy
execute unless score <next_id> variable matches 2.. run scoreboard players set <next_id> variable 2

scoreboard objectives add gameplay_perms dummy
scoreboard objectives add staff_perms dummy
scoreboard objectives add jailed dummy
scoreboard objectives add cheater dummy

scoreboard objectives add sidebar dummy {"text":"Pandamium","color":"blue","bold":"true"}
scoreboard objectives setdisplay sidebar sidebar

scoreboard objectives add spawn trigger
scoreboard objectives add respawn trigger

scoreboard objectives add vote trigger
scoreboard objectives add vote_shop trigger
scoreboard objectives add discord trigger
scoreboard objectives add playtime trigger
scoreboard objectives add clear trigger

scoreboard objectives add homes trigger
scoreboard objectives add home trigger
scoreboard objectives add sethome trigger
scoreboard objectives add delhome trigger

scoreboard objectives add tpa trigger

scoreboard objectives add particles trigger
scoreboard objectives add pose trigger
scoreboard objectives add hat trigger
scoreboard objectives add top_playtime trigger
scoreboard objectives add top_votes trigger
scoreboard objectives add font trigger

scoreboard objectives add staff_menu trigger
scoreboard objectives add jail trigger
scoreboard objectives add unjail trigger
scoreboard objectives add kick trigger
scoreboard objectives add ban trigger
scoreboard objectives add restart trigger
scoreboard objectives add toggle_spectator trigger
scoreboard objectives add inventory trigger
scoreboard objectives add enderchest trigger
scoreboard objectives add clear_items trigger
scoreboard objectives add get_guidebook trigger
scoreboard objectives add warp_staff_room trigger
scoreboard objectives add tp trigger
scoreboard objectives add take_ec trigger
scoreboard objectives add take_inv trigger
scoreboard objectives add show_spawnpoint trigger
scoreboard objectives add take_binding trigger
scoreboard objectives add staff_world trigger

scoreboard objectives add spawnpoint_x dummy
scoreboard objectives add spawnpoint_y dummy
scoreboard objectives add spawnpoint_z dummy
scoreboard objectives add spawnpoint_dim dummy
scoreboard objectives add active_particles dummy
scoreboard objectives add selected_player dummy

scoreboard objectives add votes dummy {"text":"Top Votes","color":"blue","bold":"true"}
scoreboard objectives add vote_credits dummy

scoreboard objectives add playtime_ticks minecraft.custom:minecraft.play_one_minute
scoreboard objectives add playtime_hours dummy {"text":"Top Playtime","color":"blue","bold":"true"}
scoreboard objectives add leave_count minecraft.custom:minecraft.leave_game

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

scoreboard objectives add in_nether_spawn dummy

scoreboard objectives add alive dummy

scoreboard objectives add temp_1 dummy
scoreboard objectives add temp_2 dummy
scoreboard objectives add temp_3 dummy
scoreboard objectives add temp_4 dummy

scoreboard players reset * spawn
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
scoreboard players reset * particles
scoreboard players reset * clear
scoreboard players reset * hat
scoreboard players reset * pose
scoreboard players reset * font

scoreboard players reset * staff_menu
scoreboard players reset * staff_world
scoreboard players reset * warp_staff_room
scoreboard players reset * jail
scoreboard players reset * unjail
scoreboard players reset * kick
scoreboard players reset * ban
scoreboard players reset * restart
scoreboard players reset * toggle_spectator
scoreboard players reset * inventory
scoreboard players reset * enderchest
scoreboard players reset * clear_items
scoreboard players reset * get_guidebook
scoreboard players reset * tp
scoreboard players reset * take_ec
scoreboard players reset * take_inv
scoreboard players reset * take_binding
scoreboard players reset * show_spawnpoint

scoreboard players reset * gameplay_perms
scoreboard players reset * staff_perms
scoreboard players reset * leave_count
scoreboard players reset * in_nether_spawn
scoreboard players reset * alive
scoreboard players reset * temp_1
scoreboard players reset * temp_2
scoreboard players reset * temp_3
scoreboard players reset * temp_4
scoreboard players reset * selected_player

team add guest
team modify guest prefix "Guest | "
team modify guest color gray

team add player
team modify player prefix "Player | "
team modify player color green

team add member
team modify member prefix "Member | "
team modify member color dark_green

team add elder
team modify elder prefix "Elder | "
team modify elder color aqua
team add elder+
team modify elder+ prefix "Elder | "
team modify elder+ color aqua

team add veteran
team modify veteran prefix "Veteran | "
team modify veteran color dark_aqua
team add veteran+
team modify veteran+ prefix "Veteran | "
team modify veteran+ color dark_aqua

team add vip
team modify donator prefix "VIP | "
team modify donator color blue

team add donator
team modify donator prefix "Donator | "
team modify donator color dark_purple

team add helper
team modify helper prefix "Helper | "
team modify helper color yellow
team add helper+
team modify helper+ prefix "Helper | "
team modify helper+ color yellow

team add mod
team modify mod prefix "Mod | "
team modify mod color gold

team add srmod
team modify srmod prefix [{"text":"Sr. Mod","bold":"true"},{"text":" | ","bold":"false"}]
team modify srmod color gold

team add owner
team modify owner prefix [{"text":"Owner","bold":"true"},{"text":" | ","bold":"false"}]
team modify owner color dark_red

team add gray_color
team modify gray_color color gray
team join gray_color Players:
team join gray_color Entities:
team join gray_color Items:

function pandamium:main_loop

scoreboard players set <ticks_per_hour> variable 72000
scoreboard players set <-1> variable -1

scoreboard players set <sidebar> variable 0
scoreboard players set <sidebar_timer> variable 0
function pandamium:misc/sidebar

scoreboard players set <auto_message> variable 0
schedule function pandamium:misc/auto_messages 60s

scoreboard players set <auto_clear> variable 36000

function pandamium:misc/clear_netherrack

function pandamium:misc/map_specific/falling_blocks
