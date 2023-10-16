execute store success score <success> variable run function pandamium:misc/give_guidebook
execute if score <success> variable matches 1 run tellraw @s [{"text":"[Guidebook]","color":"dark_green"},{"text":" Gave you an updated guidebook!","color":"green"}]
execute if score <success> variable matches 0 run tellraw @s [{"text":"[Guidebook]","color":"dark_red"},{"text":" Something went wrong while trying to give you a guidebook!","color":"red"}]

return 1
