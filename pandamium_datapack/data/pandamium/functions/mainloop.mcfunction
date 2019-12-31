
# Spawn protection
execute as @e[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run function pandamium:at_spawn

# Home cooldown
execute as @a[scores={home_cooldown=1..}] run scoreboard players remove @s home_cooldown 1

# Runs every half a second
scoreboard players add #half_second_counter temp_1 1
execute if score #half_second_counter temp_1 matches 10.. run function pandamium:half_second