execute unless score @s gameplay_perms matches 6.. run function pandamium:utils/print_donator_only_message
execute unless score @s gameplay_perms matches 6.. run return 0

# print menu
execute if score @s sign_font matches 1.. unless score @s sign_font matches 2..6 unless score @s sign_font matches 101..105 run return run function pandamium:triggers/sign_font/print_menu/choose_lines
execute if score @s sign_font matches 2 run return run function pandamium:triggers/sign_font/print_menu/line_1
execute if score @s sign_font matches 3 run return run function pandamium:triggers/sign_font/print_menu/line_2
execute if score @s sign_font matches 4 run return run function pandamium:triggers/sign_font/print_menu/line_3
execute if score @s sign_font matches 5 run return run function pandamium:triggers/sign_font/print_menu/line_4
execute if score @s sign_font matches 6 run return run function pandamium:triggers/sign_font/print_menu/all_lines
execute if score @s sign_font matches 101 run return run function pandamium:triggers/sign_font/print_menu/gradients {section:1,line_name:"Line 1"}
execute if score @s sign_font matches 102 run return run function pandamium:triggers/sign_font/print_menu/gradients {section:2,line_name:"Line 2"}
execute if score @s sign_font matches 103 run return run function pandamium:triggers/sign_font/print_menu/gradients {section:3,line_name:"Line 3"}
execute if score @s sign_font matches 104 run return run function pandamium:triggers/sign_font/print_menu/gradients {section:4,line_name:"Line 4"}
execute if score @s sign_font matches 105 run return run function pandamium:triggers/sign_font/print_menu/gradients {section:5,line_name:"All Lines"}

execute if score @s sign_font matches 1.. run return run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# restrictions
execute if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

# enter gradient left index
execute if score @s sign_font matches -199..-101 run scoreboard players set <left_colour_id> variable -100
execute if score @s sign_font matches -199..-101 run scoreboard players operation <left_colour_id> variable -= @s sign_font
execute if score @s sign_font matches -199..-101 run return run function pandamium:impl/font/custom_styles/gradient/enter_left_colour

# raycast
execute if score @s sign_font matches -5999..-1001 anchored eyes positioned ^ ^ ^ summon snowball run return run function pandamium:triggers/sign_font/as_raycast

#
tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
