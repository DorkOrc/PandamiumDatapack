execute if predicate pandamium:riding_entity run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You are already sat!","color":"red"}]

execute if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit while in spectator mode!","color":"red"}]
execute if predicate pandamium:player/is_flying run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit while flying!","color":"red"}]
execute if predicate pandamium:player/is_swimming run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit while swimming!","color":"red"}]
execute positioned ~ ~0.31 ~ unless entity @s[dx=0] run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit while sleeping!","color":"red"}]
execute positioned ~ ~0.61 ~ unless entity @s[dx=0] run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit while crawling!","color":"red"}]

execute if block ~ ~-0.001 ~ #pandamium:cannot_sit_on run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit here!","color":"red"}]
execute if block ~ ~ ~ #pandamium:cannot_sit_inside run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit here!","color":"red"}]
execute unless block ~ ~ ~ #pandamium:mobs_cannot_suffocate_in anchored eyes unless block ^ ^ ^ #pandamium:mobs_cannot_suffocate_in run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit here!","color":"red"}]

execute if score @s sneak_to_sit.sit_cancelled_time matches 0..30 run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You are trying to sit too quickly! You might pull a muscle!","color":"red"}]

execute unless function pandamium:misc/sit run return run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit currently!","color":"red"}]
