execute unless score @s gameplay_perms matches 6.. run scoreboard players reset @s death_particles

execute if score @s death_particles matches 128 run particle explosion
execute if score @s death_particles matches 128 run playsound entity.generic.explode player @a[distance=..16] ~ ~ ~ 1 2

execute if score @s death_particles matches 129 run function pandamium:misc/particles/death_particles/firework_rocket
execute if score @s death_particles matches 129 run playsound entity.firework_rocket.launch player @a[distance=..16] ~ ~ ~ 1 2

execute if score @s death_particles matches 130 run particle block iron_block ~ ~0.8 ~ 0 0.5 0 1 25
execute if score @s death_particles matches 130 run particle item iron_ingot ~ ~0.8 ~ 0 0.5 0 0.1 25
execute if score @s death_particles matches 130 run playsound block.anvil.land player @a[distance=..16] ~ ~ ~ 1 2

execute if score @s death_particles matches 131 run particle block gold_block ~ ~0.8 ~ 0 0.5 0 1 25
execute if score @s death_particles matches 131 run particle item gold_ingot ~ ~0.8 ~ 0 0.5 0 0.1 25
execute if score @s death_particles matches 131 run playsound block.anvil.land player @a[distance=..16] ~ ~ ~ 1 2

execute if score @s death_particles matches 132 run particle block diamond_block ~ ~0.8 ~ 0 0.5 0 1 25
execute if score @s death_particles matches 132 run particle item diamond ~ ~0.8 ~ 0 0.5 0 0.1 25
execute if score @s death_particles matches 132 run playsound block.glass.break player @a[distance=..16] ~ ~ ~ 1 2

execute if score @s death_particles matches 133 run function pandamium:misc/particles/death_particles/gore

execute if score @s death_particles matches 134 run particle block slime_block ~ ~0.8 ~ 0 0.5 0 1 35
execute if score @s death_particles matches 134 run particle item_slime ~ ~0.8 ~ 0 0.5 0 0.1 15
execute if score @s death_particles matches 134 run playsound entity.slime.death player @a[distance=..16] ~ ~ ~ 2 1

execute if score @s death_particles matches 135 run particle block amethyst_block ~ ~0.8 ~ 0 0.5 0 1 25
execute if score @s death_particles matches 135 run particle item amethyst_shard ~ ~0.8 ~ 0 0.5 0 0.1 25
execute if score @s death_particles matches 135 run playsound block.amethyst_block.break player @a[distance=..16] ~ ~ ~ 1 2
execute if score @s death_particles matches 135 run playsound block.amethyst_block.chime player @a[distance=..16] ~ ~ ~ 1 1
