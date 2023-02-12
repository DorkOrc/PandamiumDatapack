scoreboard players set <updated> variable 1

function pandamium:misc/leaderboards/hologram/monthly_playtime/generate/main
data modify entity @s text set value '{"nbt":"hologram.lines[]","storage":"pandamium:temp","interpret":true,"separator":"\\n"}'

execute store result score <y_translation> variable run data get storage pandamium:temp hologram.lines
scoreboard players operation <y_translation> variable *= #text_vert_centring_multiplier constant
scoreboard players add <y_translation> variable 25000

data modify storage pandamium:temp hologram.transformation set from entity @s transformation
execute store result storage pandamium:temp hologram.transformation.translation[1] float 0.0001 run scoreboard players get <y_translation> variable
data modify entity @s transformation set from storage pandamium:temp hologram.transformation
