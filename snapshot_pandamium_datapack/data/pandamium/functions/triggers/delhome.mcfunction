scoreboard players operation <home> variable = @s delhome
execute if score <home> variable matches ..-1 run scoreboard players operation <home> variable *= <-1> variable

scoreboard players set <cannot_delete> variable 0

scoreboard players set <home_exists> variable 0
execute if score <home> variable matches 1 store success score <home_exists> variable if score @s home_1_x = @s home_1_x
execute if score <home> variable matches 2 store success score <home_exists> variable if score @s home_2_x = @s home_2_x
execute if score <home> variable matches 3 store success score <home_exists> variable if score @s home_3_x = @s home_3_x
execute if score <home> variable matches 4 store success score <home_exists> variable if score @s home_4_x = @s home_4_x
execute if score <home> variable matches 5 store success score <home_exists> variable if score @s home_5_x = @s home_5_x
execute if score <home> variable matches 6 store success score <home_exists> variable if score @s home_6_x = @s home_6_x
execute if score <home> variable matches 7 store success score <home_exists> variable if score @s home_7_x = @s home_7_x
execute if score <home> variable matches 8 store success score <home_exists> variable if score @s home_8_x = @s home_8_x
execute if score <home> variable matches 9 store success score <home_exists> variable if score @s home_9_x = @s home_9_x
execute if score <home> variable matches 10 store success score <home_exists> variable if score @s home_10_x = @s home_10_x
execute if score <cannot_delete> variable matches 0 store success score <cannot_delete> variable if score <home_exists> variable matches 0 run tellraw @s [{"text":"[Delhome]","color":"dark_red"},[{"text":" You have not set Home ","color":"red"},{"score":{"name":"<home>","objective":"variable"}}," yet!"]]

execute if score @s delhome matches 1 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 1","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 1","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -1"}}]
execute if score @s delhome matches 2 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 2","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 2","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -2"}}]
execute if score @s delhome matches 3 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 3","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 3","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -3"}}]
execute if score @s delhome matches 4 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 4","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 4","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -4"}}]
execute if score @s delhome matches 5 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 5","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 5","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -5"}}]
execute if score @s delhome matches 6 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 6","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 6","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -6"}}]
execute if score @s delhome matches 7 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 7","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 7","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -7"}}]
execute if score @s delhome matches 8 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 8","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 8","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -8"}}]
execute if score @s delhome matches 9 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 9","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 9","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -9"}}]
execute if score @s delhome matches 10 if score <home_exists> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Delhome]","color":"dark_red"}," Do you want to delete ",{"text":"Home 10","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"text":"Home 10","bold":true}]},"clickEvent":{"action":"run_command","value":"trigger delhome set -10"}}]

execute if score <cannot_delete> variable matches 0 store success score <cannot_delete> variable unless score <home> variable matches 1..10 run tellraw @s [{"text":"[Delhome]","color":"dark_red"},{"text":" That is not a valid home ID! You need to enter a number between 1 and 10.","color":"red"}]
execute if score <cannot_delete> variable matches 0 if score @s delhome matches ..-1 run function pandamium:home/delete_check_perms

scoreboard players reset @s delhome
scoreboard players enable @s delhome
