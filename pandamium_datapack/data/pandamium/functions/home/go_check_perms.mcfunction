execute if score @s home matches 1 run function pandamium:home/go_check_exists

execute if score @s home matches 2 if score @s gameplay_perms matches 1.. run function pandamium:home/go_check_exists
execute if score @s home matches 2 unless score @s gameplay_perms matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to this home! You can increase your rank to get access to this home. Check the ","color":"red"}, {"text":"[Discord]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on ranks.","color":"red"}]

execute if score @s home matches 3 if score @s gameplay_perms matches 2.. run function pandamium:home/go_check_exists
execute if score @s home matches 3 unless score @s gameplay_perms matches 2.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to this home! You can increase your rank to get access to this home. Check the ","color":"red"}, {"text":"[Discord]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on ranks.","color":"red"}]

execute if score @s home matches 4 if score @s gameplay_perms matches 3.. run function pandamium:home/go_check_exists
execute if score @s home matches 4 unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to this home! You can increase your rank to get access to this home. Check the ","color":"red"}, {"text":"[Discord]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on ranks.","color":"red"}]

execute if score @s home matches 5 if score @s gameplay_perms matches 4.. run function pandamium:home/go_check_exists
execute if score @s home matches 5 unless score @s gameplay_perms matches 4.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to this home! You can increase your rank to get access to this home. Check the ","color":"red"}, {"text":"[Discord]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on ranks.","color":"red"}]

execute if score @s home matches 6..10 if score @s gameplay_perms matches 5.. run function pandamium:home/go_check_exists
execute if score @s home matches 6..10 unless score @s gameplay_perms matches 5.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You do not have access to this home! You can increase your rank to get access to this home. Check the ","color":"red"}, {"text":"[Discord]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on ranks.","color":"red"}]

execute unless score @s home matches 1..10 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID, you need to set a number between 1 and 10!","color":"red"}]
