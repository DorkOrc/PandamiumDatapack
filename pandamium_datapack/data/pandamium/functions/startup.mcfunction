scoreboard objectives add id dummy
execute unless score <next_id> variable matches 1.. run scoreboard players set <next_id> variable 1

scoreboard objectives add gameplay_perms dummy
scoreboard objectives add staff_perms dummy

scoreboard objectives add spawn trigger
scoreboard objectives add respawn trigger
scoreboard objectives add vote trigger
scoreboard objectives add home trigger
scoreboard objectives add sethome trigger
scoreboard objectives add check_cooldown trigger
scoreboard objectives add staff_menu trigger
scoreboard objectives add survival_mode trigger
scoreboard objectives add spectator_mode trigger

scoreboard objectives add votes dummy

scoreboard objectives add playtime_ticks minecraft.custom:minecraft.play_one_minute
scoreboard objectives add leave_count minecraft.custom:minecraft.leave_game

scoreboard objectives add home_1_x dummy
scoreboard objectives add home_1_y dummy
scoreboard objectives add home_1_z dummy
scoreboard objectives add home_2_x dummy
scoreboard objectives add home_2_y dummy
scoreboard objectives add home_2_z dummy
scoreboard objectives add home_3_x dummy
scoreboard objectives add home_3_y dummy
scoreboard objectives add home_3_z dummy
scoreboard objectives add home_4_x dummy
scoreboard objectives add home_4_y dummy
scoreboard objectives add home_4_z dummy
scoreboard objectives add home_5_x dummy
scoreboard objectives add home_5_y dummy
scoreboard objectives add home_5_z dummy

scoreboard objectives add home_cooldown dummy

scoreboard objectives add variable dummy
scoreboard objectives add temp_1 dummy
scoreboard objectives add temp_2 dummy
scoreboard objectives add temp_3 dummy

scoreboard players reset * gameplay_perms
scoreboard players reset * staff_perms
scoreboard players reset * spawn
scoreboard players reset * respawn
scoreboard players reset * vote
scoreboard players reset * home
scoreboard players reset * sethome
scoreboard players reset * check_cooldown
scoreboard players reset * staff_menu
scoreboard players reset * survival_mode
scoreboard players reset * spectator_mode
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

team add elder
team modify elder prefix "Elder | "
team modify elder color aqua

team add veteran
team modify veteran prefix "Veteran | "
team modify veteran color dark_aqua

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

execute as @a run function pandamium:on_join