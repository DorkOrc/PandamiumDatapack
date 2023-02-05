data modify entity @s CustomName set value '{"text":"---------------"}'
execute on passengers run data modify entity @s CustomName set value '{"text":"Monthly Playtime","bold":true}'
execute on passengers on passengers run function pandamium:misc/leaderboards/hologram/kill_entity_stack
