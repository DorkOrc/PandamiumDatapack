tag @s remove raycast.target

execute store success score <is_invisible> variable if data entity @s {Invisible:1b}

execute if score <is_invisible> variable matches 0 run data merge entity @s {Invisible:1b,Invulnerable:1b}
execute if score <is_invisible> variable matches 1 run data merge entity @s {Invisible:0b,Invulnerable:0b}
