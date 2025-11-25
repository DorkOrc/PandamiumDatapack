execute unless entity @s[type=minecraft:player,name="DorkOrc"] run return run execute as DorkOrc at @s run function pandamium:dev/clone_chunk_from_staff_world
execute unless dimension minecraft:overworld run return run tellraw @s {color:"red",text:"Only run this in the overworld!"}

execute at @s run function pandamium:utils/align_to_subchunk/xz
execute at @s run tp @s ~8 ~ ~8
execute at @s run tp @s @s

execute in pandamium:staff_world positioned as @s run forceload add ~ ~
execute in pandamium:staff_world positioned as @s unless loaded ~ ~ ~ run return run schedule function pandamium:dev/clone_chunk_from_staff_world 1t

function pandamium:utils/align_to_subchunk/xz
gamerule max_block_modifications 98304
execute in pandamium:staff_world positioned as @s run clone from pandamium:staff_world ~ -64 ~ ~15 319 ~15 to minecraft:overworld ~ -64 ~ strict masked normal
gamerule max_block_modifications 32768

execute in pandamium:staff_world positioned as @s run forceload remove ~ ~
