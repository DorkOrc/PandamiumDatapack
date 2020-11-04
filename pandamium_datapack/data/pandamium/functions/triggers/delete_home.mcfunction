
scoreboard players set <has_set_home> variable 1
execute if score @s del_home matches 1 unless score @s home_1_x = @s home_1_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 2 unless score @s home_2_x = @s home_2_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 3 unless score @s home_3_x = @s home_3_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 4 unless score @s home_4_x = @s home_4_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 5 unless score @s home_5_x = @s home_5_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 6 unless score @s home_6_x = @s home_6_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 7 unless score @s home_7_x = @s home_7_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 8 unless score @s home_8_x = @s home_8_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 9 unless score @s home_9_x = @s home_9_x run scoreboard players set <has_set_home> variable 0
execute if score @s del_home matches 10 unless score @s home_10_x = @s home_10_x run scoreboard players set <has_set_home> variable 0
execute if score <has_set_home> variable matches 0 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You have not set this home yet!","color":"red"}]
execute if score <has_set_home> variable matches 0 run scoreboard players reset @s del_home

execute if score @s del_home matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 1","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 1","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -1"}}]
execute if score @s del_home matches 2 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 2","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 2","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -2"}}]
execute if score @s del_home matches 3 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 3","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 3","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -3"}}]
execute if score @s del_home matches 4 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 4","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 4","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -4"}}]
execute if score @s del_home matches 5 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 5","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 5","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -5"}}]
execute if score @s del_home matches 6 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 6","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 6","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -6"}}]
execute if score @s del_home matches 7 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 7","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 7","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -7"}}]
execute if score @s del_home matches 8 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 8","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 8","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -8"}}]
execute if score @s del_home matches 9 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 9","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 9","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -9"}}]
execute if score @s del_home matches 10 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to delete ",{"text":"Home 10","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Delete Home 10","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger del_home set -10"}}]

execute if score @s del_home matches -10..-1 run function pandamium:home/delete_check_perms

execute if score @s del_home matches ..-11 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]
execute if score @s del_home matches 11.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]

scoreboard players reset @s del_home
scoreboard players enable @s del_home
