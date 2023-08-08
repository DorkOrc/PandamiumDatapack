execute positioned 29999999 0 29999999 summon marker run function pandamium:impl/teleport/check_can_teleport
execute if score <can_teleport> variable matches 0 run return run tellraw @s [{"text":"[Teleport]","color":"dark_red"},{"text":" Invalid coordinates!","color":"red"}]

spectate
function pandamium:impl/teleport/teleport
