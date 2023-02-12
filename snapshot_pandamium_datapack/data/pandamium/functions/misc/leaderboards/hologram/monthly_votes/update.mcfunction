scoreboard players set <updated> variable 1

function pandamium:misc/leaderboards/hologram/monthly_votes/generate/main
data modify entity @s text set value '{"nbt":"hologram.lines[]","storage":"pandamium:temp","interpret":true,"separator":"\\n"}'

execute positioned -9.399495 93.5 6.863961 run tp @s ~ ~ ~ facing 0 ~ 0
data modify storage pandamium:temp hologram.transformation set from entity @s transformation
execute store result storage pandamium:temp hologram.transformation.translation[1] float -0.1375 run data get storage pandamium:temp hologram.lines
data modify entity @s transformation set from storage pandamium:temp hologram.transformation
