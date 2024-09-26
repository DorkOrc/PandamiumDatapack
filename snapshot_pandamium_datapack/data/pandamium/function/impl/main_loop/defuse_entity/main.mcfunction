execute if entity @s[type=creeper] run return run function pandamium:impl/main_loop/defuse_entity/defuse_creeper
execute if entity @s[type=#pandamium:tnt] run return run function pandamium:impl/main_loop/defuse_entity/defuse_tnt
execute if entity @s[type=end_crystal] run return run function pandamium:impl/main_loop/defuse_entity/defuse_end_crystal
execute if entity @s[type=wither] run return run function pandamium:impl/main_loop/defuse_entity/defuse_wither
kill @s
