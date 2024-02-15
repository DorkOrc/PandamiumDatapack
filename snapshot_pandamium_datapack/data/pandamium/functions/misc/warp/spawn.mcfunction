execute if entity @s[predicate=!pandamium:in_spawn] in overworld positioned -289 127 174 rotated 0 0 run return run function pandamium:utils/teleport/here/from_source {source:"warp spawn"}

# else
execute in overworld positioned -289 127 174 rotated 0 0 run function pandamium:utils/teleport/here
