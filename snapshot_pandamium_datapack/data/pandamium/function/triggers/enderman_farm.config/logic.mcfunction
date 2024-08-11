execute unless data storage pandamium:global enderman_farm_warp.x run data remove storage pandamium:global enderman_farm_warp

# menu
execute if score @s enderman_farm.config matches 1.. run return run function pandamium:triggers/enderman_farm.config/print_menu

# set
execute if score @s enderman_farm.config matches -101 run return run function pandamium:triggers/enderman_farm.config/set_warp

# delete
execute if score @s enderman_farm.config matches -102 run return run function pandamium:triggers/enderman_farm.config/delete_warp

# enable protection
execute if score @s enderman_farm.config matches -103 run return run function pandamium:triggers/enderman_farm.config/protection/enable

# disable protection
execute if score @s enderman_farm.config matches -104 run return run function pandamium:triggers/enderman_farm.config/protection/disable

# else
tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
