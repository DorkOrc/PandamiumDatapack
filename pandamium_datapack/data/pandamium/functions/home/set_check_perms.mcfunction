execute if score @s sethome matches 1 run function pandamium:home/set_run

execute if score @s sethome matches 2 if score @s gameplay_perms matches 1.. run function pandamium:home/set_run
execute if score @s sethome matches 2 unless score @s gameplay_perms matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Players and upwards and Donators can use more than one home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s sethome matches 3 if score @s gameplay_perms matches 2.. run function pandamium:home/set_run
execute if score @s sethome matches 3 unless score @s gameplay_perms matches 2.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Members and upwards and Donators can use more than two homes! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s sethome matches 4 if score @s gameplay_perms matches 3.. run function pandamium:home/set_run
execute if score @s sethome matches 4 unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Elders and upwards and Donators can use more than three homes! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s sethome matches 5 if score @s gameplay_perms matches 4.. run function pandamium:home/set_run
execute if score @s sethome matches 5 unless score @s gameplay_perms matches 4.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Veterans and Donators can use more than four homes! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s sethome matches 6.. if score @s gameplay_perms matches 5.. run function pandamium:home/set_run
execute if score @s sethome matches 6.. unless score @s gameplay_perms matches 5.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Donators can use more than five homes! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]
