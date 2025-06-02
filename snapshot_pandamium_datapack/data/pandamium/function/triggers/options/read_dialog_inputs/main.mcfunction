scoreboard players set <menu> variable 0
scoreboard players operation <menu> variable -= @s options
scoreboard players operation <menu> variable %= #10 constant

execute if score <menu> variable matches 1 run return run function pandamium:triggers/options/read_dialog_inputs/gameplay
execute if score <menu> variable matches 2 run return run function pandamium:triggers/options/read_dialog_inputs/accessibility

tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" That is not a valid option!"}]
