scoreboard players reset <enderman_farm_x> global
scoreboard players reset <enderman_farm_y> global
scoreboard players reset <enderman_farm_z> global
scoreboard players reset <do_enderman_farm_protection> global
data remove storage pandamium:global enderman_farm_warp

tellraw @s [{"text":"[Enderman Farm]","color":"dark_green"},[{"text":" ","color":"green"},{"text":"Deleted","color":"aqua"}," the ",{"text":"Enderman Farm","color":"aqua"}," warp!"]]
scoreboard players set <returned> variable 1
