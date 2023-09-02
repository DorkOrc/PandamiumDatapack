# storage pandamium:temp hologram.lines should exist

scoreboard players set <updated> variable 1

data modify entity @s text set value '{"nbt":"hologram.lines[]","storage":"pandamium:temp","interpret":true,"separator":"\\n"}'

execute store result entity @s transformation.translation[1] float -0.1375 run data get storage pandamium:temp hologram.lines
