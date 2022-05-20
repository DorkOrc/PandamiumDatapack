scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches -1 if score @s staff_perms matches 1.. unless score @s in_dimension matches 1 run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","italic":true}," warp can only be created in The End!"]]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s enderman_farm matches -1 if score @s staff_perms matches 1.. run function pandamium:misc/set_enderman_farm_coordinates

execute if score <returned> variable matches 0 store success score <returned> variable unless score @s enderman_farm matches 1.. run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score <returned> variable matches 0 store success score <returned> variable if score <enderman_farm_x> global = <enderman_farm_x> global run function pandamium:misc/teleport/warp/enderman_farm
execute if score <returned> variable matches 0 store success score <returned> variable if score @s staff_perms matches 1.. if score @s in_dimension matches 1 run tellraw @s [{"text":"[Warp]","color":"gold"},[{"text":" The ","color":"yellow"},{"text":"Enderman Farm","italic":true}," warp has not been created yet! Click ",{"text":"[Here]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"trigger enderman_farm set -1"},"hoverEvent":{"action":"show_text","value":{"text":"Click to set the Enderman Farm warp at your location","color":"dark_green"}}}," to create it at your location."]]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","italic":true}," warp has not been created yet! Go to The End to create it."]]
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","italic":true}," warp has not been created yet!"]]

scoreboard players reset @s enderman_farm
scoreboard players enable @s enderman_farm
