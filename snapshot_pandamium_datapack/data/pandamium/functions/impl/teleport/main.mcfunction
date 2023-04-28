execute positioned 29999999 0 29999999 summon marker run function pandamium:impl/teleport/check_can_teleport
# <can_teleport> variable -> {0,1}

execute if score <can_teleport> variable matches 0 run tellraw @s [{"text":"[Teleport] ","color":"dark_red"},{"text":" Invalid coordinates!","color":"red"}]
execute if score <can_teleport> variable matches 1 run spectate
execute if score <can_teleport> variable matches 1 run function pandamium:impl/teleport/teleport
