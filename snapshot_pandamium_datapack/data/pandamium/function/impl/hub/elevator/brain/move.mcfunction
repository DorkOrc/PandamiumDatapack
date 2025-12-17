# arguments: blocks_per_tick, destination, id

execute unless entity @s[tag=elevator.started] run fill ~-1 ~-2 ~-1 ~1 ~4 ~1 minecraft:air strict
$execute unless entity @s[tag=elevator.started] run function pandamium:impl/hub/elevator/brain/start/$(id)
tag @s add elevator.started

fill ~ ~-2 ~ ~ ~-2 ~ minecraft:iron_chain[axis=y] replace #pandamium:elevator_replaceable strict
fill ~ ~-1 ~ ~ ~2 ~ minecraft:air replace #pandamium:elevator_replaceable strict
fill ~ ~3 ~ ~ ~3 ~ minecraft:light[level=15] replace #pandamium:elevator_replaceable strict
fill ~ ~4 ~ ~ ~4 ~ minecraft:iron_chain[axis=y] replace #pandamium:elevator_replaceable strict

$execute positioned ~ $(destination) ~ if entity @s[distance=..0.01] align y run return run function pandamium:impl/hub/elevator/brain/stop with entity @s data.elevator.brain

execute if predicate pandamium:periodic_tick/5t run playsound minecraft:item.spyglass.use master @a[distance=..16] ~ ~ ~ 0.35 0
execute if predicate pandamium:periodic_tick/1s run playsound minecraft:block.ladder.step master @a[distance=..16] ~ ~ ~ 0.15 0
execute if predicate pandamium:periodic_tick/10t unless predicate pandamium:periodic_tick/1s run playsound minecraft:entity.minecart.riding master @a[distance=..16] ~ ~ ~ 0.1 0

# if below destination
$execute if predicate {condition:"location_check",predicate:{position:{y:{max:$(destination)}}}} as @e[x=0,tag=elevator.id.$(id),tag=elevator.move] positioned as @s run tp @s ~ ~$(blocks_per_tick) ~
$execute if predicate {condition:"location_check",predicate:{position:{y:{max:$(destination)}}}} positioned ~ ~$(blocks_per_tick) ~ if predicate {condition:"location_check",predicate:{position:{y:{min:$(destination)}}}} as @e[x=0,tag=elevator.id.$(id),tag=elevator.move] positioned as @s run tp @s ~ $(destination) ~

# if above destination
$execute if predicate {condition:"location_check",predicate:{position:{y:{min:$(destination)}}}} as @e[x=0,tag=elevator.id.$(id),tag=elevator.move] positioned as @s run tp @s ~ ~-$(blocks_per_tick) ~
$execute if predicate {condition:"location_check",predicate:{position:{y:{min:$(destination)}}}} positioned ~ ~-$(blocks_per_tick) ~ if predicate {condition:"location_check",predicate:{position:{y:{max:$(destination)}}}} as @e[x=0,tag=elevator.id.$(id),tag=elevator.move] positioned as @s run tp @s ~ $(destination) ~
