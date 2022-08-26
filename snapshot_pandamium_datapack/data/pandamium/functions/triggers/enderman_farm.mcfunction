scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches ..-1 unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches -1 run function pandamium:misc/enderman_farm/print_menu

execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches -101 unless predicate pandamium:in_dimension/the_end run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp can only be created in ",{"text":"The End","bold":true},"!"]]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches -101 run function pandamium:misc/enderman_farm/set_warp

execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches -102 unless score <enderman_farm_x> global = <enderman_farm_x> global run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches -102 run function pandamium:misc/enderman_farm/remove_warp

execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches ..-1 run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Warp
execute if score <returned> variable matches 0 store success score <returned> variable if score <enderman_farm_x> global = <enderman_farm_x> global run function pandamium:misc/teleport/warp/enderman_farm

execute if score <returned> variable matches 0 store success score <returned> variable if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"],{"text":"\n[Warp] ","color":"gold"},{"text":"Click here to configure this warp!","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to configure the ","color":"yellow"},{"text":"Enderman Farm","bold":true}," warp"]},"clickEvent":{"action":"run_command","value":"/trigger enderman_farm set -1"}}]
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]

scoreboard players reset @s enderman_farm
scoreboard players enable @s enderman_farm
