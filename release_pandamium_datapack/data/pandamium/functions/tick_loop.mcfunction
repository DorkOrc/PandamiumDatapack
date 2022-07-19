# temporary
kill @e[type=minecraft:wither_skull]

# Disable tnt
execute as @e[type=#pandamium:tnt] at @s run function pandamium:misc/defuse_tnt
