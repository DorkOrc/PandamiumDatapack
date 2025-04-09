execute if score <queue.wait> variable matches ..-20 run return run function pandamium:impl/queue/actions/teleport_to_end_platform/fail

# teleport until platform chunks are loaded
execute in minecraft:the_end run tp @s 100 49 0
execute in minecraft:the_end unless loaded 100 48 0 run return run function pandamium:impl/queue/utils/continue
execute in minecraft:the_end unless loaded 100 48 -1 run return run function pandamium:impl/queue/utils/continue

# log if the platform needed to be regenerated
execute in minecraft:the_end positioned 100 48 0 unless predicate [{condition:"minecraft:location_check",predicate:{block:{blocks:"minecraft:bedrock"}}},{condition:"minecraft:location_check",offsetY:1,predicate:{block:{blocks:"minecraft:moving_piston"}}},{condition:"minecraft:location_check",offsetY:2,predicate:{block:{blocks:"minecraft:moving_piston"}}}] run function pandamium:utils/log {args:{tell_online:true,message:["Regenerated end platform and teleported ",{selector:"@s"}," safely"]}}

# regenerate platform
execute in minecraft:the_end run fill 98 48 -2 102 48 2 air replace #pandamium:end_platform_materials strict
execute in minecraft:the_end run fill 98 48 -2 102 48 2 obsidian destroy
execute in minecraft:the_end run setblock 100 48 0 bedrock strict
execute in minecraft:the_end run fill 98 49 -2 102 51 2 air replace moving_piston strict
execute in minecraft:the_end run fill 98 49 -2 102 51 2 moving_piston destroy

# final teleport
execute in minecraft:the_end run tp @s 100 49 0
