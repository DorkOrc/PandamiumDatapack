execute as @a[scores={playtime_ticks=1}] run function pandamium:on_join
execute as @a[scores={leave_count=1..}] run function pandamium:on_join

function pandamium:loop_triggers

execute as @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:at_spawn

kill @e[type=minecraft:tnt]

execute as @a[scores={home_cooldown=1..}] run scoreboard players remove @s home_cooldown 1