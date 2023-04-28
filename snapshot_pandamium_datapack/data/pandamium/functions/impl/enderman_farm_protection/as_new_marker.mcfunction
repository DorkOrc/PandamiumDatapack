tag @s add enderman_farm_protection
data modify entity @s CustomName set value '{"text":"enderman_farm_protection","color":"gray"}'

execute store result entity @s data.enderman_farm_protection_version int 1 run scoreboard players add <enderman_farm_protection_version> global 1
execute store result entity @s Pos[0] double 1 run scoreboard players get <enderman_farm_x> global
execute store result entity @s Pos[1] double 1 run scoreboard players get <enderman_farm_y> global
execute store result entity @s Pos[2] double 1 run scoreboard players get <enderman_farm_z> global
execute in the_end positioned as @s run tp @s ~.5 ~ ~.5
