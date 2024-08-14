# sound fx
execute if predicate {condition:"time_check",period:5,value:0} run playsound minecraft:item.spyglass.use block @a[distance=..16] ~ ~ ~ 0.35 0
execute if predicate {condition:"time_check",period:20,value:0} run playsound minecraft:block.ladder.step block @a[distance=..16] ~ ~ ~ 0.15 0
execute if predicate {condition:"time_check",period:20,value:10} run playsound minecraft:entity.minecart.riding block @a[distance=..16] ~ ~ ~ 0.1 0

# chains and light
fill ~ ~5 ~ ~ ~5 ~ chain replace air
fill ~ ~3 ~ ~ ~4 ~ air
setblock ~ ~2 ~ light[level=15]
setblock ~ ~1 ~ air
setblock ~ ~-1 ~ air
fill ~ ~-2 ~ ~ ~-2 ~ chain replace air

# motion
execute at @s[tag=elevator.moving_down] run data modify entity @s Motion set value [0d,-0.43d,0d]
execute at @s[tag=elevator.moving_up] run data modify entity @s Motion set value [0d,0.43d,0d]
data modify entity @s Air set value 0s
data modify entity @s Air set value 1s

# termination
execute align xz positioned ~ 77.8125 ~ if entity @s[tag=elevator.location.mineshaft,tag=elevator.moving_down,dx=-100] run function pandamium:impl/map_specific/elevator/stop
execute align xz positioned ~ 121.8125 ~ if entity @s[tag=elevator.location.mineshaft,tag=elevator.moving_up,dx=100] run function pandamium:impl/map_specific/elevator/stop

execute align xz positioned ~ 109.8125 ~ if entity @s[tag=elevator.location.maproom,tag=elevator.state.0,tag=elevator.moving_down,dx=-100] run function pandamium:impl/map_specific/elevator/stop
execute align xz positioned ~ 126.8125 ~ if entity @s[tag=elevator.location.maproom,tag=elevator.state.0,tag=elevator.moving_up,dx=100] run function pandamium:impl/map_specific/elevator/stop

execute align xz positioned ~ 125.8125 ~ if entity @s[tag=elevator.location.maproom,tag=elevator.state.1,tag=elevator.moving_down,dx=-100] run function pandamium:impl/map_specific/elevator/stop
execute align xz positioned ~ 143.8125 ~ if entity @s[tag=elevator.location.maproom,tag=elevator.state.1,tag=elevator.moving_up,dx=100] run function pandamium:impl/map_specific/elevator/stop
