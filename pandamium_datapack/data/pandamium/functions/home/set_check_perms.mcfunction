scoreboard players set <can_set> variable 1

execute unless score @s in_dimension matches -1..1 run scoreboard players set <can_set> variable 0
execute unless score @s in_dimension matches -1..1 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You cannot set a home in this dimension!","color":"red"}]

tag @s add setting_home
execute store success score <in_donator_area> variable if entity @p[tag=setting_home,x=-166,y=-52,z=-110,dx=128,dy=75,dz=133]
tag @s remove setting_home
execute if score <in_donator_area> variable matches 1 run scoreboard players set <can_set> variable 0
execute if score <in_donator_area> variable matches 1 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You cannot set a home here!","color":"red"}]

#

execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -1 run function pandamium:home/set_run

execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -2 if score @s gameplay_perms matches 1.. run function pandamium:home/set_run
execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -2 unless score @s gameplay_perms matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to that home! You can donate or increase your rank to get access to that home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate!","color":"red"}]

execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -3 if score @s gameplay_perms matches 2.. run function pandamium:home/set_run
execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -3 unless score @s gameplay_perms matches 2.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to that home! You can donate or increase your rank to get access to that home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate!","color":"red"}]

execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -4 if score @s gameplay_perms matches 3.. run function pandamium:home/set_run
execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -4 unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to that home! You can donate or increase your rank to get access to that home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate!","color":"red"}]

execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -5 if score @s gameplay_perms matches 4.. run function pandamium:home/set_run
execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -5 unless score @s gameplay_perms matches 4.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to that home! You can donate or increase your rank to get access to that home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate!","color":"red"}]

execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -7..-6 if score @s gameplay_perms matches 5.. run function pandamium:home/set_run
execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -7..-6 unless score @s gameplay_perms matches 5.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to that home! You can donate or increase your rank to get access to that home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate!","color":"red"}]

execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -10..-8 if score @s gameplay_perms matches 6.. run function pandamium:home/set_run
execute if score <can_set> variable matches 1 unless score @s jailed matches 1.. if score @s sethome matches -10..-8 unless score @s gameplay_perms matches 6.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to that home! You can donate or increase your rank to get access to that home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate!","color":"red"}]

execute unless score @s jailed matches 1.. if score @s sethome matches ..-11 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" That is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]
execute if score <can_set> variable matches 1 if score @s jailed matches 1.. run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" You cannot use that trigger in jail!","color":"red"}]
