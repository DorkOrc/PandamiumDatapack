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

execute store result score <sneak_to_sit> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <sneak_to_sit> variable %= #10 constant
execute unless score <sneak_to_sit> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

# apply options
execute if score <disable_phantom_spawning> variable matches 0 run scoreboard players reset @s optn.disable_phantom_spawning
execute if score <disable_phantom_spawning> variable matches 1 run scoreboard players set @s optn.disable_phantom_spawning 1
execute if score <disable_attack_indicator> variable matches 0 run scoreboard players reset @s disable_attack_indicator
execute if score <disable_attack_indicator> variable matches 1 run scoreboard players set @s disable_attack_indicator 1
execute if score <sneak_to_sit> variable matches 0 run scoreboard players reset @s sneak_to_sit
execute if score <sneak_to_sit> variable matches 1 run scoreboard players set @s sneak_to_sit 1

# warn about keep-inventory
execute if score <disable_keep_inventory> variable matches 1 unless score @s disable_keep_inventory matches 1 run return run dialog show @s {type:"minecraft:confirmation",title:"",body:{type:"minecraft:plain_message",contents:"Are you sure you want to disable Keep-Inventory?\n\nDoing this will cause you to drop all of your inventory onto the ground whenever you die (permanently if you fall into the void)!",width:400},yes:{label:"I Understand The Risks",action:{type:"run_command",command:"/trigger options set -2"}},no:{label:"Cancel"}}
execute if score <disable_keep_inventory> variable matches 0 run scoreboard players reset @s disable_keep_inventory
execute if score <disable_keep_inventory> variable matches 1 run scoreboard players set @s disable_keep_inventory 1
