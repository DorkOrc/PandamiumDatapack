data modify storage pandamium:queue entries append value {action: "compile_parkour_3",meta:{do_bossbar:1b}}
execute store result storage pandamium:queue entries[-1].meta.players int 1 store result storage pandamium:queue entries[-1].source int 1 run scoreboard players get @s id

tellraw @s [{"text":"[admin]","color":"dark_green"},[{"text":" Queued compiling leader boards: ","color":"green"},{"text":"[parkour_3]","color":"aqua"},"."]]
