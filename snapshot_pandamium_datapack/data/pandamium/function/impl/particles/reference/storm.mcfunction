execute store result score <storm> variable store result score <lightning_bolt> variable run scoreboard players get <current_gametime> global
scoreboard players operation <storm> variable %= #1500 constant
scoreboard players operation <lightning_bolt> variable %= #75 constant

execute if score <storm> variable matches 500.. run particle minecraft:falling_water ~ ~2.6 ~ .5 0 .5 .001 1
execute if predicate pandamium:periodic_tick/5t run function pandamium:impl/particles/custom_trails/storm

# Lightning Bolts
execute if score <storm> variable matches 1000.. if score <lightning_bolt> variable matches 5 rotated ~ 0 run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_1
execute if score <storm> variable matches 1000.. if score <lightning_bolt> variable matches 15 rotated ~ 0 run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_2
execute if score <storm> variable matches 1000.. if score <lightning_bolt> variable matches 30 rotated ~ 0 run function pandamium:impl/particles/custom_trails/misc/lightning_bolt_3
