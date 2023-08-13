tag @s add source
scoreboard players set <returned> variable 0

execute store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:utils/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 if score @s sign_font matches 1..100 store success score <returned> variable run function pandamium:impl/font/print_menu/sign_font/choose_lines
execute if score <returned> variable matches 0 if score @s sign_font matches 101 store success score <returned> variable run function pandamium:impl/font/print_menu/sign_font/line_1
execute if score <returned> variable matches 0 if score @s sign_font matches 102 store success score <returned> variable run function pandamium:impl/font/print_menu/sign_font/line_2
execute if score <returned> variable matches 0 if score @s sign_font matches 103 store success score <returned> variable run function pandamium:impl/font/print_menu/sign_font/line_3
execute if score <returned> variable matches 0 if score @s sign_font matches 104 store success score <returned> variable run function pandamium:impl/font/print_menu/sign_font/line_4
execute if score <returned> variable matches 0 if score @s sign_font matches 105 store success score <returned> variable run function pandamium:impl/font/print_menu/sign_font/all_lines
execute if score <returned> variable matches 0 if score @s sign_font matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]
execute if score <returned> variable matches 0 anchored eyes positioned ^ ^ ^ summon snowball run function pandamium:triggers/sign_font/as_raycast

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" Something went wrong! ","color":"red"},{"text":"[Debug]","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"@s sign_font: ","color":"yellow"},{"score":{"name":"@s","objective":"sign_font"}},"\n<hit> variable: ",{"score":{"name":"<hit>","objective":"variable"}}]}}]

tag @s remove source
scoreboard players reset @s sign_font
scoreboard players enable @s sign_font
