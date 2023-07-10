execute if score <enderman_farm_x> global = <enderman_farm_x> global run scoreboard players set <do_enderman_farm_protection> global 0
execute if score <enderman_farm_x> global = <enderman_farm_x> global run scoreboard players add <enderman_farm_protection_version> global 1
execute if score <enderman_farm_x> global = <enderman_farm_x> global store success score <returned> variable run tellraw @s [{"text":"[Enderman Farm]","color":"dark_green"},[{"text":" Disabled ","color":"green"},{"text":"Enderman Farm Protection","bold":true},"!"]]
