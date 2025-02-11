# arguments: index, uuid, command, unload_time, (id)

$data modify storage pandamium:cache macros.entities.entries[-1].commands[0] set value 'execute as $(uuid) at @s[predicate=pandamium:projectile/particles/produce_movement_trail] run $(command)'
data remove storage pandamium:cache macros.entities.entries[-1].command
$data modify storage pandamium:cache macros.entities.lines."$(index)a" set from storage pandamium:cache macros.entities.entries[-1].commands[0]

$data modify storage pandamium:cache macros.entities.entries[-1].commands[1] set value 'execute unless entity $(uuid) run function pandamium:impl/database/cache/modify/remove_entities_entry/main {uuid:"$(uuid)"}'
$data modify storage pandamium:cache macros.entities.lines."$(index)b" set from storage pandamium:cache macros.entities.entries[-1].commands[1]

$data modify storage pandamium:cache macros.entities.entries[-1].commands[2] set value 'execute if score <current_gametime> global matches $(unload_time).. run function pandamium:impl/database/cache/modify/remove_entities_entry/main {uuid:"$(uuid)"}'
$data modify storage pandamium:cache macros.entities.lines."$(index)c" set from storage pandamium:cache macros.entities.entries[-1].commands[2]
