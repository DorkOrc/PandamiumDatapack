scoreboard players reset * variable

# Misc
scoreboard players reset * temp_1

scoreboard players reset * detect.die
scoreboard players reset * detect.use.ender_pearl
scoreboard players reset * detect.use.trident
scoreboard players reset * detect.use.wet_sponge
scoreboard players reset * detect.aviate
scoreboard players reset * detect.take_damage

execute unless entity @a[limit=1] run function pandamium:startup/reset_volatile_scoreboards_offline_only
execute if score <dev_environment> global matches 1 run scoreboard players reset @a detect.leave_game
