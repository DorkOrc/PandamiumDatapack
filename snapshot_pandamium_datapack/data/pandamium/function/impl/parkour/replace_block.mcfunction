# arguments: block

execute store result score <replace_block_for_checkpoint> variable run data get entity @s data.checkpoint
execute unless score <replace_block_for_checkpoint> variable = <node_id> variable run return 0
$execute at @s if block ~ ~ ~ $(block) run return 0

$execute at @s run setblock ~ ~ ~ $(block)
execute at @s align xyz run particle cloud ~.5 ~.5 ~.5 0 0.5 0 0.01 3
