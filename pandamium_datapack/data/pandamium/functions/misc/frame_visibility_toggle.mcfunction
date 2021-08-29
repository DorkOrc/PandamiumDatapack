execute store success score <state> variable if data entity @s {Invisible:1b}

execute if score <state> variable matches 0 run data merge entity @s {Invisible:1b,Invulnerable:1b}
execute if score <state> variable matches 1 run data merge entity @s {Invisible:0b,Invulnerable:0b}
