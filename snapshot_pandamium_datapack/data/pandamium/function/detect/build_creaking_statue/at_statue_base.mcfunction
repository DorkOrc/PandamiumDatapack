execute summon creaking run function pandamium:detect/build_creaking_statue/as_creaking
scoreboard players set <summoned_entity> variable 1

execute store success score <unnatural> variable if block ~ ~1 ~ minecraft:creaking_heart{components:{"minecraft:custom_data":{pandamium:{unnatural:true}}}}

execute store result score <block_drops> variable run gamerule block_drops
gamerule block_drops false
fill ~ ~ ~ ~ ~2 ~ air destroy
execute if score <block_drops> variable matches 1 run gamerule block_drops true

playsound minecraft:entity.creaking.spawn block @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:entity.creaking.spawn block @a[distance=..32] ~ ~ ~ 1 0
execute positioned ~ ~1 ~ run function pandamium:utils/get/position
data modify storage pandamium:local functions."pandamium:detect/build_creaking_statue/create_particles".position set from storage pandamium:temp position
function pandamium:detect/build_creaking_statue/create_particles with storage pandamium:local functions."pandamium:detect/build_creaking_statue/create_particles"
