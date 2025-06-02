# get inputs
execute store result score <disable_keep_inventory> variable run scoreboard players operation @s options /= #-10 constant
scoreboard players operation <disable_keep_inventory> variable %= #10 constant
execute unless score <disable_keep_inventory> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <disable_phantom_spawning> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <disable_phantom_spawning> variable %= #10 constant
execute unless score <disable_phantom_spawning> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <disable_attack_indicator> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <disable_attack_indicator> variable %= #10 constant
execute unless score <disable_attack_indicator> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <hide_parkour_timer> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <hide_parkour_timer> variable %= #10 constant
execute unless score <hide_parkour_timer> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <sneak_to_sit> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <sneak_to_sit> variable %= #10 constant
execute unless score <sneak_to_sit> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

# apply options
execute if score <disable_keep_inventory> variable matches 0 run scoreboard players reset @s disable_keep_inventory
execute if score <disable_keep_inventory> variable matches 1 run scoreboard players set @s disable_keep_inventory 1
execute if score <disable_phantom_spawning> variable matches 0 run scoreboard players reset @s optn.disable_phantom_spawning
execute if score <disable_phantom_spawning> variable matches 1 run scoreboard players set @s optn.disable_phantom_spawning 1
execute if score <disable_attack_indicator> variable matches 0 run scoreboard players reset @s disable_attack_indicator
execute if score <disable_attack_indicator> variable matches 1 run scoreboard players set @s disable_attack_indicator 1
execute if score <hide_parkour_timer> variable matches 0 run scoreboard players reset @s hide_parkour_timer
execute if score <hide_parkour_timer> variable matches 1 run scoreboard players set @s hide_parkour_timer 1
execute if score <sneak_to_sit> variable matches 0 run scoreboard players reset @s sneak_to_sit
execute if score <sneak_to_sit> variable matches 1 run scoreboard players set @s sneak_to_sit 1
