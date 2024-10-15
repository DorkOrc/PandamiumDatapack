execute store result storage pandamium:templates distance_matrix[0] float 1 run scoreboard players get <dx> variable
execute store result storage pandamium:templates distance_matrix[4] float 1 run scoreboard players get <dy> variable
execute store result storage pandamium:templates distance_matrix[8] float 1 run scoreboard players get <dz> variable
data modify entity @s transformation set from storage pandamium:templates distance_matrix
execute store result score <distance> variable run data get entity @s transformation.scale[0]
function pandamium:utils/kill_technical_entity_discretely
return run scoreboard players get <distance> variable
