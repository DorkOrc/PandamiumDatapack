scoreboard players set <summoned_entity> variable 0
execute anchored eyes positioned ^ ^ ^ anchored feet summon snowball run function pandamium:detect/build_creaking_statue/as_raycast

execute if score <summoned_entity> variable matches 1 if score <unnatural> variable matches 1 run tellraw @s [{"text":"[Private Info]","color":"dark_red"},{"text":" This untethered Creaking was made using an unnatural creaking heart, so it will not drop any mob heads if killed by a charged creeper!","color":"red"}]

execute if score <summoned_entity> variable matches 1 run effect give @s darkness 15 0 true
execute if score <summoned_entity> variable matches 1 run advancement grant @s only pandamium:pandamium/mob_heads/vandalism build_creaking_statue

advancement revoke @s only pandamium:detect/build_creaking_statue
