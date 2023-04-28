execute if score <enderman_farm_x> global = <enderman_farm_x> global run scoreboard players set <do_enderman_farm_protection> global 1
execute if score <enderman_farm_x> global = <enderman_farm_x> global in the_end positioned 300 0 0 summon marker run function pandamium:impl/enderman_farm_protection/as_new_marker
execute if score <enderman_farm_x> global = <enderman_farm_x> global store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_green"},[{"text":" Enabled ","color":"green"},{"text":"Enderman Farm Protection","bold":true},"!"]]
