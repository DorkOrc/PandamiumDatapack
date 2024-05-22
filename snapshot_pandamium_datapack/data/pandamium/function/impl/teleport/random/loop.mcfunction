scoreboard players add <i> variable 1
spreadplayers 0 0 0 25000 false @s
execute positioned as @s positioned over motion_blocking_no_leaves if block ~ ~ ~ #pandamium:rtp_invalid_blocks run tp @s 0 0 0
execute positioned as @s positioned over motion_blocking_no_leaves if block ~ ~1 ~ #pandamium:rtp_invalid_blocks run tp @s 0 0 0
execute unless score <i> variable matches 10.. at @s if predicate pandamium:in_rtp_invalid_area in overworld run function pandamium:impl/teleport/random/loop
