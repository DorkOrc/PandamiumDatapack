execute store result score <percent> variable run scoreboard players add @s portal_ticks 5
scoreboard players operation <percent> variable *= #100 constant
scoreboard players operation <percent> variable /= #90 constant

execute if score @s portal_ticks matches 5..85 run title @s actionbar [{text:"Entering Portal... ",color:"gray"},{score:{name:"<percent>",objective:"variable"},color:"aqua"},"%"]

execute if score @s portal_ticks matches 90 run title @s actionbar {text:"Entered Portal!",color:"gray"}
execute if score @s portal_ticks matches 90 run function pandamium:impl/portal/enter/main
