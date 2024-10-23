execute if block ~ ~ ~ minecraft:white_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:0}
execute if block ~ ~ ~ minecraft:orange_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:1}
execute if block ~ ~ ~ minecraft:magenta_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:2}
execute if block ~ ~ ~ minecraft:light_blue_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:3}
execute if block ~ ~ ~ minecraft:yellow_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:4}
execute if block ~ ~ ~ minecraft:lime_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:5}
execute if block ~ ~ ~ minecraft:pink_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:6}
execute if block ~ ~ ~ minecraft:gray_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:7}
execute if block ~ ~ ~ minecraft:light_gray_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:8}
execute if block ~ ~ ~ minecraft:cyan_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:9}
execute if block ~ ~ ~ minecraft:purple_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:10}
execute if block ~ ~ ~ minecraft:blue_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:11}
execute if block ~ ~ ~ minecraft:brown_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:12}
execute if block ~ ~ ~ minecraft:green_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:13}
execute if block ~ ~ ~ minecraft:red_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:14}
execute if block ~ ~ ~ minecraft:black_shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:15}
execute if block ~ ~ ~ minecraft:shulker_box run function pandamium:detect/build_shulker_statue/summon_shulker {color:16}

scoreboard players set <summoned_entity> variable 1

execute store result score <doTileDrops> variable run gamerule doTileDrops
gamerule doTileDrops false
fill ~ ~ ~ ~ ~1 ~ air destroy
execute if score <doTileDrops> variable matches 1 run gamerule doTileDrops true

playsound minecraft:entity.shulker.ambient block @a[distance=..32] ~ ~ ~ 1 1
