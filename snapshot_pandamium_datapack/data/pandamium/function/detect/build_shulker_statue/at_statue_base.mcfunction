execute store result score <doTileDrops> variable run gamerule doTileDrops
gamerule doTileDrops false

execute if block ~ ~1 ~ minecraft:white_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:0,replacement_block_state:"white_terracotta"}
execute if block ~ ~1 ~ minecraft:orange_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:1,replacement_block_state:"orange_terracotta"}
execute if block ~ ~1 ~ minecraft:magenta_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:2,replacement_block_state:"magenta_terracotta"}
execute if block ~ ~1 ~ minecraft:light_blue_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:3,replacement_block_state:"light_blue_terracotta"}
execute if block ~ ~1 ~ minecraft:yellow_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:4,replacement_block_state:"yellow_terracotta"}
execute if block ~ ~1 ~ minecraft:lime_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:5,replacement_block_state:"lime_terracotta"}
execute if block ~ ~1 ~ minecraft:pink_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:6,replacement_block_state:"pink_terracotta"}
execute if block ~ ~1 ~ minecraft:gray_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:7,replacement_block_state:"gray_terracotta"}
execute if block ~ ~1 ~ minecraft:light_gray_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:8,replacement_block_state:"light_gray_terracotta"}
execute if block ~ ~1 ~ minecraft:cyan_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:9,replacement_block_state:"cyan_terracotta"}
execute if block ~ ~1 ~ minecraft:purple_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:10,replacement_block_state:"purple_terracotta"}
execute if block ~ ~1 ~ minecraft:blue_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:11,replacement_block_state:"blue_terracotta"}
execute if block ~ ~1 ~ minecraft:brown_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:12,replacement_block_state:"brown_terracotta"}
execute if block ~ ~1 ~ minecraft:green_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:13,replacement_block_state:"green_terracotta"}
execute if block ~ ~1 ~ minecraft:red_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:14,replacement_block_state:"red_terracotta"}
execute if block ~ ~1 ~ minecraft:black_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:15,replacement_block_state:"black_terracotta"}
execute if block ~ ~1 ~ minecraft:shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:16,replacement_block_state:"purple_terracotta"}

scoreboard players set <summoned_entity> variable 1

fill ~ ~1 ~ ~ ~2 ~ air destroy
execute if block ~ ~ ~ purpur_block run setblock ~ ~ ~ air destroy
execute if score <doTileDrops> variable matches 1 run gamerule doTileDrops true

playsound minecraft:entity.shulker.ambient block @a[distance=..32] ~ ~1 ~ 1 1
particle minecraft:end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0 20
