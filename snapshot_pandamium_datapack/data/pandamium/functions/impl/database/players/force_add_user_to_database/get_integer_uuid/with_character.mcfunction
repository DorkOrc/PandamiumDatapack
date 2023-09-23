# arguments: character

scoreboard players set <value> variable -1
$execute store result score <value> variable run data get storage pandamium:dictionary hex_digit_values."$(character)"
execute if score <value> variable matches -1 run scoreboard players set <valid_suuid> variable 0

scoreboard players operation <value> variable *= <multiplier> variable
scoreboard players operation <sum> variable += <value> variable

scoreboard players operation <multiplier> variable /= #16 constant
execute if score <multiplier> variable matches 0 run data modify storage pandamium:temp uuid append value 0
execute if score <multiplier> variable matches 0 store result storage pandamium:temp uuid[-1] int 1 run scoreboard players get <sum> variable
execute if score <multiplier> variable matches 0 run scoreboard players set <sum> variable 0
execute if score <multiplier> variable matches 0 run scoreboard players set <multiplier> variable 268435456
