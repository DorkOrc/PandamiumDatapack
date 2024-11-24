execute if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You are in spectator mode!","color":"red"}]

execute if predicate pandamium:riding_entity run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You are already sat!","color":"red"}]

execute unless function pandamium:misc/sit run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit currently!","color":"red"}]
