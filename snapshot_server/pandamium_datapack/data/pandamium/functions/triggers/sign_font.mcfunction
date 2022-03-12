# run AT @s

execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

# Menu
scoreboard players set <has_printed_menu> variable 0
execute if score @s sign_font matches 1..100 if score @s gameplay_perms matches 6.. store success score <has_printed_menu> variable run function pandamium:misc/font/print_menu/sign_font/choose_lines
execute if score @s sign_font matches 101 if score @s gameplay_perms matches 6.. store success score <has_printed_menu> variable run function pandamium:misc/font/print_menu/sign_font/line_1
execute if score @s sign_font matches 102 if score @s gameplay_perms matches 6.. store success score <has_printed_menu> variable run function pandamium:misc/font/print_menu/sign_font/line_2
execute if score @s sign_font matches 103 if score @s gameplay_perms matches 6.. store success score <has_printed_menu> variable run function pandamium:misc/font/print_menu/sign_font/line_3
execute if score @s sign_font matches 104 if score @s gameplay_perms matches 6.. store success score <has_printed_menu> variable run function pandamium:misc/font/print_menu/sign_font/line_4
execute if score @s sign_font matches 105 if score @s gameplay_perms matches 6.. store success score <has_printed_menu> variable run function pandamium:misc/font/print_menu/sign_font/all_lines

# Catch Errors
execute store success score <can_run> variable if score @s sign_font matches ..-1

execute if score <can_run> variable matches 1 store success score <can_run> variable if score @s gameplay_perms matches 6..
execute if score <can_run> variable matches 1 store success score <can_run> variable unless entity @s[predicate=pandamium:in_spawn]
execute if score <can_run> variable matches 1 store success score <can_run> variable unless entity @s[gamemode=spectator]

execute if score <can_run> variable matches 1 run function pandamium:misc/raycast/create_sign_raycast
execute if score <can_run> variable matches 1 store success score <can_run> variable if score <raycast_in_block> variable matches 1

# Do Edit
scoreboard players operation <line> variable = @s sign_font
scoreboard players operation <line> variable /= <100> variable
scoreboard players operation <line> variable *= <-1> variable
execute store success score <all_lines> variable if score <line> variable matches 5

scoreboard players operation <font> variable = @s sign_font
scoreboard players operation <font> variable %= <100> variable
scoreboard players operation <font> variable *= <-1> variable
scoreboard players add <font> variable 100

execute if score <can_run> variable matches 1 run scoreboard players set <valid_option> variable 0
execute if score <can_run> variable matches 1 at @e[type=marker,tag=raycast.sign,limit=1] run function pandamium:misc/font/edit_sign_text
execute if score <can_run> variable matches 1 store success score <can_run> variable if score <valid_option> variable matches 1
execute if score <can_run> variable matches 1 store success score <can_run> variable if score <lines_changed> variable matches 1..

# Success
execute if score <can_run> variable matches 1 if score <lines_changed> variable matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[Sign Font]","color":"dark_green"}," Updated the text on the sign you are looking at!"]
execute if score <can_run> variable matches 1 if score <lines_changed> variable matches 1.. run playsound ui.cartography_table.take_result master @s

# Display an error message
execute if score <can_run> variable matches 0 store success score <displayed_error> variable if score <has_printed_menu> variable matches 1
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score @s gameplay_perms matches 6..
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if entity @s[predicate=pandamium:in_spawn] run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <raycast_in_block> variable matches 1 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You are not looking at a sign!","color":"red"}]
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <valid_option> variable matches 1 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <lines_changed> variable matches 1.. run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

kill @e[type=marker,tag=raycast.sign]
scoreboard players reset @s sign_font
scoreboard players enable @s sign_font
