
execute if score @s sethome matches 1 unless score @s home_1_x = @s home_1_x run scoreboard players set @s sethome -1
execute if score @s sethome matches 2 unless score @s home_2_x = @s home_2_x run scoreboard players set @s sethome -2
execute if score @s sethome matches 3 unless score @s home_3_x = @s home_3_x run scoreboard players set @s sethome -3
execute if score @s sethome matches 4 unless score @s home_4_x = @s home_4_x run scoreboard players set @s sethome -4
execute if score @s sethome matches 5 unless score @s home_5_x = @s home_5_x run scoreboard players set @s sethome -5
execute if score @s sethome matches 6 unless score @s home_6_x = @s home_6_x run scoreboard players set @s sethome -6
execute if score @s sethome matches 7 unless score @s home_7_x = @s home_7_x run scoreboard players set @s sethome -7
execute if score @s sethome matches 8 unless score @s home_8_x = @s home_8_x run scoreboard players set @s sethome -8
execute if score @s sethome matches 9 unless score @s home_9_x = @s home_9_x run scoreboard players set @s sethome -9
execute if score @s sethome matches 10 unless score @s home_10_x = @s home_10_x run scoreboard players set @s sethome -10

execute if score @s sethome matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 1","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 1","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -1"}}]
execute if score @s sethome matches 2 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 2","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 2","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -2"}}]
execute if score @s sethome matches 3 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 3","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 3","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -3"}}]
execute if score @s sethome matches 4 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 4","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 4","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -4"}}]
execute if score @s sethome matches 5 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 5","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 5","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -5"}}]
execute if score @s sethome matches 6 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 6","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 6","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -6"}}]
execute if score @s sethome matches 7 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 7","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 7","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -7"}}]
execute if score @s sethome matches 8 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 8","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 8","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -8"}}]
execute if score @s sethome matches 9 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 9","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 9","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -9"}}]
execute if score @s sethome matches 10 run tellraw @s [{"text":"","color":"red"},{"text":"[Home]","color":"dark_red"}," Do you want to replace ",{"text":"Home 10","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Set Home 10","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger sethome set -10"}}]

execute if score @s sethome matches -10..-1 run function pandamium:home/set_check_perms

execute unless score @s sethome matches -10..10 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]

scoreboard players reset @s sethome
scoreboard players enable @s sethome
