execute summon marker run function pandamium:impl/teleport/validate_coordinates
execute if score <can_teleport> variable matches 0 run tellraw @s [{text:"[Teleport]",color:"dark_red"},{text:" Invalid coordinates!",color:"red"}]
execute if score <can_teleport> variable matches 0 run return fail

scoreboard players set <teleporting> global 1
function pandamium:impl/teleport/teleport
scoreboard players reset <teleporting> global
