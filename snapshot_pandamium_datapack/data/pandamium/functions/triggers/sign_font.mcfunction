# run AT @s

scoreboard players set <returned> variable 0

execute store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 1..100 run function pandamium:misc/font/print_menu/sign_font/choose_lines
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 101 run function pandamium:misc/font/print_menu/sign_font/line_1
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 102 run function pandamium:misc/font/print_menu/sign_font/line_2
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 103 run function pandamium:misc/font/print_menu/sign_font/line_3
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 104 run function pandamium:misc/font/print_menu/sign_font/line_4
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 105 run function pandamium:misc/font/print_menu/sign_font/all_lines

execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 1.. run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Restrictions
execute if score <returned> variable matches 0 store success score <returned> variable if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot edit signs at spawn!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot edit signs in spectator mode!","color":"red"}]

execute if score <returned> variable matches 0 run function pandamium:misc/raycast/signs/main
execute if score <returned> variable matches 0 store success score <returned> variable if score <raycast_in_block> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You are not looking at a sign!","color":"red"}]
execute if score <returned> variable matches 0 at @e[type=marker,tag=raycast.sign,limit=1] run function pandamium:misc/font/sign/at_ray

execute as @e[type=marker,tag=raycast.ray] run function pandamium:misc/raycast/kill_marker_vibration_fix
scoreboard players reset @s sign_font
scoreboard players enable @s sign_font
