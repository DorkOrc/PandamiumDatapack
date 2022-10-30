# There is a bug which causes vibrations to occur when marker entities are killed.
# Teleporting the marker away (but in the same dimension) prevents this from causing any problems when raycasting.
execute at @s run tp 0 0 0
kill
