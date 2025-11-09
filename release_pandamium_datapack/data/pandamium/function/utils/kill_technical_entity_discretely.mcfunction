execute if entity @s[type=end_crystal,tag=defused] on passengers as @s[type=interaction,tag=entity_remover] run function pandamium:misc/kill_entity_remover
execute on passengers run ride @s dismount
execute at @s run tp @s ~ -1000000 ~
kill @s
