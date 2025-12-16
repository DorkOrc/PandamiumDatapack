data modify entity @s Tags append from storage pandamium:temp location_tag
data modify entity @s Tags append from storage pandamium:temp state_tag

tag @s add elevator
tag @s add elevator.engine
tag @s add elevator.engine_new

data merge entity @s {NoGravity:true,Item:{id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air"}}}

execute positioned ~ ~0.1875 ~ summon minecraft:item_display run function pandamium:impl/hub/elevator/create/as_base

function pandamium:impl/hub/elevator/stop

tag @s remove elevator.engine_new
