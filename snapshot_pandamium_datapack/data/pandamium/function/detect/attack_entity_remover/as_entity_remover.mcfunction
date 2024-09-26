scoreboard players set <was_attacked> variable 0
execute on attacker run scoreboard players set <was_attacked> variable 1
execute on vehicle if entity @s[type=interaction,tag=entity_remover] on attacker run scoreboard players set <was_attacked> variable 1
execute if score <was_attacked> variable matches 0 run return 0

execute on vehicle on vehicle if entity @s[type=end_crystal] at @s run function pandamium:misc/fake_explosion
execute on vehicle on vehicle run kill @s
execute on vehicle run kill @s
kill @s
