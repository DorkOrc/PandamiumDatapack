execute if score @s parkour.checkpoint matches 1.. run advancement grant @s only pandamium:detect/parkour/cheat use_wind_charge
execute if predicate pandamium:in_spawn run function pandamium:detect/shoot_wind_charge_in_spawn

scoreboard players reset @s detect.use.wind_charge
advancement revoke @s only pandamium:detect/use_wind_charge
