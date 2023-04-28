execute unless score @s staff_perms matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 1 run return 0

# menu
execute if score <returned> variable matches 0 if score @s enderman_farm matches -1 store success score <returned> variable run function pandamium:impl/triggers/enderman_farm/print_menu

# set
execute if score <returned> variable matches 0 if score @s enderman_farm matches -101 unless predicate pandamium:in_dimension/the_end store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp can only be set in ",{"text":"The End","bold":true},"!"]]
execute if score <returned> variable matches 0 if score @s enderman_farm matches -101 run function pandamium:impl/triggers/enderman_farm/set_warp

# delete
execute if score <returned> variable matches 0 if score @s enderman_farm matches -102 unless score <enderman_farm_x> global = <enderman_farm_x> global store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]
execute if score <returned> variable matches 0 if score @s enderman_farm matches -102 run function pandamium:impl/triggers/enderman_farm/delete_warp

# toggle protection
execute if score <returned> variable matches 0 if score <enderman_farm_x> global = <enderman_farm_x> variable if score @s enderman_farm matches -105..-104 store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]

execute if score <returned> variable matches 0 if score @s enderman_farm matches -103 if score <do_enderman_farm_protection> global matches 1 store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" Enderman Farm Protection is already enabled!","color":"red"}]
execute if score <returned> variable matches 0 if score @s enderman_farm matches -103 run function pandamium:impl/triggers/enderman_farm/protection/enable

execute if score <returned> variable matches 0 if score @s enderman_farm matches -104 if score <do_enderman_farm_protection> global matches 0 store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" Enderman Farm Protection is already disabled!","color":"red"}]
execute if score <returned> variable matches 0 if score @s enderman_farm matches -104 run function pandamium:impl/triggers/enderman_farm/protection/disable

# err
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
