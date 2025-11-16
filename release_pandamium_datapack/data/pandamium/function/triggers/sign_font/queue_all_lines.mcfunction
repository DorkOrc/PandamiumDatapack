# context: positioned <sign>

data modify storage pandamium:queue entries append value {action: "set_sign_font", x: -1, y: 64, z: -6, dimension: "pandamium:staff_world"}
execute store result storage pandamium:queue entries[-1].source int 1 run scoreboard players get @s id
execute store result storage pandamium:queue entries[-1].style int 1 run scoreboard players get <style> variable
execute if score <looking_at_front> variable matches 1 run data modify storage pandamium:queue entries[-1].side set value "front"
execute if score <looking_at_front> variable matches 0 run data modify storage pandamium:queue entries[-1].side set value "back"
function pandamium:utils/get/dimension_string_id/from_position
data modify storage pandamium:queue entries[-1].dimension set from storage pandamium:temp dimension_string_id
function pandamium:utils/get/position
execute store result storage pandamium:queue entries[-1].x int 1 run scoreboard players get <x> variable
execute store result storage pandamium:queue entries[-1].y int 1 run scoreboard players get <y> variable
execute store result storage pandamium:queue entries[-1].z int 1 run scoreboard players get <z> variable
