execute if predicate pandamium:in_spawn unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot edit signs at spawn!","color":"red"}]
execute if predicate pandamium:in_spawn unless score @s staff_perms matches 2.. run return 0

# Do Edit
scoreboard players operation <line> variable = @s sign_font
scoreboard players operation <line> variable *= #-1 constant
scoreboard players operation <line> variable /= #1000 constant
execute store success score <all_lines> variable if score <line> variable matches 5
execute unless score <line> variable matches 1..5 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless score <line> variable matches 1..5 run return 0

scoreboard players operation <style> variable = @s sign_font
scoreboard players operation <style> variable *= #-1 constant
scoreboard players operation <style> variable %= #1000 constant

execute if block ~ ~ ~ #wall_signs store result score <looking_at_front> variable run function pandamium:triggers/sign_font/get_facing_signs_side
execute if block ~ ~ ~ #pandamium:rotation_signs store result score <looking_at_front> variable run function pandamium:triggers/sign_font/get_rotation_signs_side

scoreboard players set <valid_option> variable 0
function pandamium:triggers/sign_font/edit_text
execute if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <valid_option> variable matches 0 run return 0
execute if score <lines_changed> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
execute if score <lines_changed> variable matches 0 run return 0

# success
execute if score <valid_option> variable matches 1 if score <lines_changed> variable matches 1.. run playsound ui.cartography_table.take_result master @s
execute if score <valid_option> variable matches 1 if score <lines_changed> variable matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[Sign Font]","color":"dark_green"}," Updated the text on the sign you are looking at!"]
