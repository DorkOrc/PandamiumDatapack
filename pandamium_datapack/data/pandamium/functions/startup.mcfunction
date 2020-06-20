scoreboard objectives add id dummy
execute unless score <next_id> variable matches 1.. run scoreboard players set <next_id> variable 1

scoreboard objectives add gameplay_perms dummy
scoreboard objectives add staff_perms dummy

scoreboard objectives add sidebar dummy {"text":"Pandamium","color":"blue","bold":"true"}
scoreboard objectives setdisplay sidebar sidebar

scoreboard objectives add spawn trigger
scoreboard objectives add respawn trigger

scoreboard objectives add vote trigger
scoreboard objectives add vote_shop trigger
scoreboard objectives add discord trigger

scoreboard objectives add home trigger
scoreboard objectives add sethome trigger

scoreboard objectives add tpa trigger
scoreboard objectives add tpa_accept trigger

scoreboard objectives add show_cooldown trigger
scoreboard objectives add show_playtime trigger

scoreboard objectives add particles trigger
scoreboard objectives add playtime_top trigger
scoreboard objectives add votes_top trigger

scoreboard objectives add staff_menu trigger
scoreboard objectives add jail trigger
scoreboard objectives add jailed dummy
scoreboard objectives add unjail trigger
scoreboard objectives add kick trigger
scoreboard objectives add ban trigger
scoreboard objectives add restart trigger
scoreboard objectives add survival_mode trigger
scoreboard objectives add spectator_mode trigger
scoreboard objectives add inventory trigger
scoreboard objectives add enderchest trigger
scoreboard objectives add clear_items trigger
scoreboard objectives add get_guidebook trigger
scoreboard objectives add show_homes trigger
scoreboard objectives add warp_staff_room trigger
scoreboard objectives add tp trigger
scoreboard objectives add take_ec trigger
scoreboard objectives add take_inv trigger

scoreboard objectives add spawnpoint trigger
scoreboard objectives add spawnpoint_x dummy
scoreboard objectives add spawnpoint_y dummy
scoreboard objectives add spawnpoint_z dummy
scoreboard objectives add spawnpoint_dim dummy

scoreboard objectives add votes dummy
scoreboard objectives modify votes displayname {"text":"Top Votes","color":"aqua","bold":"true"}
scoreboard objectives add vote_credits dummy

scoreboard objectives add playtime_hours dummy
scoreboard objectives modify playtime_hours displayname {"text":"Top Playtime","color":"aqua","bold":"true"}
scoreboard objectives add playtime_ticks minecraft.custom:minecraft.play_one_minute
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

scoreboard objectives add home_cooldown dummy

scoreboard objectives add tpa_request dummy
scoreboard objectives add tpa_request_time dummy
scoreboard objectives add tpa_cooldown dummy

scoreboard objectives add in_nether_spawn dummy

scoreboard objectives add variable dummy
scoreboard objectives add temp_1 dummy
scoreboard objectives add temp_2 dummy
scoreboard objectives add temp_3 dummy
scoreboard objectives add temp_4 dummy

scoreboard players reset * gameplay_perms
scoreboard players reset * staff_perms
scoreboard players reset * spawn
scoreboard players reset * respawn
scoreboard players reset * vote
scoreboard players reset * discord
scoreboard players reset * home
scoreboard players reset * sethome
scoreboard players reset * show_cooldown
scoreboard players reset * show_playtime
scoreboard players reset * staff_menu
scoreboard players reset * jail
scoreboard players reset * unjail
scoreboard players reset * kick
scoreboard players reset * ban
scoreboard players reset * restart
scoreboard players reset * survival_mode
scoreboard players reset * spectator_mode
scoreboard players reset * inventory
scoreboard players reset * enderchest
scoreboard players reset * clear_items
scoreboard players reset * get_guidebook
scoreboard players reset * show_homes
scoreboard players reset * warp_staff_room
scoreboard players reset * leave_count
scoreboard players reset * in_nether_spawn
scoreboard players reset * temp_1
scoreboard players reset * temp_2
scoreboard players reset * temp_3

team add guest
team modify guest prefix "Guest | "
team modify guest color gray

team add player
team modify player prefix "Player | "
team modify player color green

team add member
team modify member prefix "Member | "
team modify member color dark_green

team add elder+
team modify elder+ prefix "Elder | "
team modify elder+ color aqua
team add elder+
team modify elder prefix "Elder | "
team modify elder color aqua

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
team add mod+
team modify mod+ prefix "Mod | "
team modify mod+ color gold

team add srmod
team modify srmod prefix [{"text":"Sr. Mod","bold":"true"},{"text":" | ","bold":"false"}]
team modify srmod color gold
team add srmod+
team modify srmod+ prefix [{"text":"Sr. Mod","bold":"true"},{"text":" | ","bold":"false"}]
team modify srmod+ color gold

team add owner
team modify owner prefix [{"text":"Owner","bold":"true"},{"text":" | ","bold":"false"}]
team modify owner color dark_red

team add gray_color
team modify gray_color color gray
team join gray_color Players:
team join gray_color Entities:

function pandamium:main_loop

scoreboard players set <playtime> variable 72000

scoreboard players set <sidebar> variable 0
scoreboard players set <sidebar_timer> variable 0
function pandamium:misc/sidebar

scoreboard players set <auto_message> variable 0
schedule function pandamium:misc/auto_messages 60s

scoreboard players set <auto_clear> variable 36000

function pandamium:misc/clear_netherrack
