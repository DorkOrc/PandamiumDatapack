execute if score @s in_dimension matches -1 run advancement grant @s only pandamium:minecraft/nether/dry_spell

scoreboard players reset @s detect.use.wet_sponge
advancement revoke @s only pandamium:detect/place_wet_sponge
