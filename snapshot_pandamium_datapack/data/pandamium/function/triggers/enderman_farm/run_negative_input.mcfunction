execute unless score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# menu
execute if score @s enderman_farm matches -1 run return run function pandamium:triggers/enderman_farm/print_menu

# set
execute if score @s enderman_farm matches -101 unless dimension the_end run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp can only be set in ",{"text":"The End","bold":true},"!"]]
execute if score @s enderman_farm matches -101 run return run function pandamium:triggers/enderman_farm/set_warp

# delete
execute if score @s enderman_farm matches -102 unless score <enderman_farm_x> global = <enderman_farm_x> global run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]
execute if score @s enderman_farm matches -102 run return run function pandamium:triggers/enderman_farm/delete_warp

# toggle protection
execute if score @s enderman_farm matches -103 unless score <enderman_farm_x> global = <enderman_farm_x> global run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]
execute if score @s enderman_farm matches -103 if score <do_enderman_farm_protection> global matches 1 run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" Enderman Farm Protection is already enabled!","color":"red"}]
execute if score @s enderman_farm matches -103 run return run function pandamium:triggers/enderman_farm/protection/enable

execute if score @s enderman_farm matches -104 unless score <enderman_farm_x> global = <enderman_farm_x> global run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]
execute if score @s enderman_farm matches -104 if score <do_enderman_farm_protection> global matches 0 run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" Enderman Farm Protection is already disabled!","color":"red"}]
execute if score @s enderman_farm matches -104 run return run function pandamium:triggers/enderman_farm/protection/disable

# else
tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
