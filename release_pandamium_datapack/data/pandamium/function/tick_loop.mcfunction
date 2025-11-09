# Dummy Blocks
function pandamium:startup/place_dummy_blocks

# Disable tnt
execute as @e[type=#pandamium:tnt] at @s run function pandamium:misc/defuse_tnt

# Queued actions
function pandamium:impl/queue/tick
