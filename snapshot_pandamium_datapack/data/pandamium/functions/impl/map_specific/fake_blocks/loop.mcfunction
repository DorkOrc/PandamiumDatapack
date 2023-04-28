kill @e[type=falling_block,tag=map_specific.fake_block]
execute as @e[type=marker,tag=map_specific.fake_block] at @s if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all in pandamium:staff_world positioned 0 0 0 run function pandamium:impl/map_specific/fake_blocks/as_marker

schedule function pandamium:impl/map_specific/fake_blocks/loop 599t
