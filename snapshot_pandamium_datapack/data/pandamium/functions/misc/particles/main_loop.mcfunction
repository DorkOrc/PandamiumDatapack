execute as @a[gamemode=!spectator,scores={active_particles=1..}] unless score @s hidden matches 1.. at @s run function pandamium:misc/particles/main_as_player

# Timers
scoreboard players add <blush_timer> variable 1
execute if score <blush_timer> variable matches 5.. run scoreboard players set <blush_timer> variable 0

scoreboard players add <light_timer> variable 1
execute if score <light_timer> variable matches 4.. run scoreboard players set <light_timer> variable 0

scoreboard players add <storm> variable 1
execute if score <storm> variable matches 300.. run scoreboard players set <storm> variable 0

scoreboard players add <lightning_bolt> variable 1
execute if score <lightning_bolt> variable matches 15.. run scoreboard players set <lightning_bolt> variable 0
