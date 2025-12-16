execute if score <vanish_on> global matches 0 run return run tellraw @s [{color:"dark_red",text:"[Vanish]"},{color:"red",text:" Vanish is not enabled on the server!"}]

execute if score @s vanished matches 1 if score @s vanish matches 2 run return run function pandamium:triggers/vanish/join_in_survival_mode

execute unless score @s vanished matches 1 run return run function pandamium:triggers/vanish/vanish_on {_:""}
execute if score @s vanished matches 1 run return run function pandamium:triggers/vanish/vanish_off {_:""}
