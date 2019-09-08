execute in minecraft:overworld run tp ~ 255 ~
setblock ~ ~ ~ minecraft:end_gateway{ExactTeleport:1b}
function pandamium:home/go_1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["portal_remover"]}

tellraw @s [{"text":"[Home]","color":"dark_green"},{"text":" Successfully teleported to your home!","color":"green"}]

#scoreboard players set @s home_cooldown 6000