execute if dimension minecraft:the_nether if predicate pandamium:player/can_gain_advancements_locational run advancement grant @s only pandamium:minecraft/nether/dry_spell

scoreboard players reset @s detect.use.wet_sponge
advancement revoke @s only pandamium:detect/place_wet_sponge
