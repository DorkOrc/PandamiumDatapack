execute unless score @s home_cooldown matches 1.. run function pandamium:home/go_check_exists

execute if score @s home_cooldown matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You still have a cooldown! Donators can bypass the cooldown. You can check Discord for more information.","color":"red"}]