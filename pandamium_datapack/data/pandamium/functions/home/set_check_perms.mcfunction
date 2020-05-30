execute if score @s sethome matches 1 run function pandamium:home/set_run

execute if score @s sethome matches 2 if score @s gameplay_perms matches 1.. run function pandamium:home/set_run
execute if score @s sethome matches 2 unless score @s gameplay_perms matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Donators, Elders, and Veterans can use more than one home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s sethome matches 3 if score @s gameplay_perms matches 2.. run function pandamium:home/set_run
execute if score @s sethome matches 3 unless score @s gameplay_perms matches 2.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Donators and Veterans can use more than two homes! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s sethome matches 4..5 if score @s gameplay_perms matches 3.. run function pandamium:home/set_run
execute if score @s sethome matches 4..5 unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Donators can use more than three homes! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]
