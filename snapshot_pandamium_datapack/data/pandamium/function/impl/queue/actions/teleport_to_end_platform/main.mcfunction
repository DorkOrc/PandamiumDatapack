#{
#	action: "teleport_to_end_platform",
#	player: INT
#}

$execute unless entity @a[scores={id=$(player)},limit=1] run return 0
$execute if score <queue.wait> variable matches ..-20 run return run tellraw @a[scores={id=$(player)},limit=1] [{"text":"[Warp]","color":"dark_red"},{"text":" Gave up trying to teleport you safely to end platform after 20 failed attempts!","color":"red"}]

$execute in the_end run tp @a[scores={id=$(player)},limit=1] 100 49 0
execute in the_end unless loaded 100 48 0 run return run function pandamium:impl/queue/utils/continue
execute in the_end unless loaded 100 48 -1 run return run function pandamium:impl/queue/utils/continue

execute in the_end run fill 98 48 -2 102 48 2 air replace #pandamium:end_platform_materials
execute in the_end run fill 98 48 -2 102 48 2 obsidian destroy
execute in the_end run setblock 100 48 0 bedrock
execute in the_end run fill 98 49 -2 102 51 2 air replace moving_piston
execute in the_end run fill 98 49 -2 102 51 2 moving_piston destroy

$execute in the_end run tp @a[scores={id=$(player)},limit=1] 100 49 0
$tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Teleported ","extra":[{"selector":"@a[scores={id=$(player)},limit=1]"}," to the end platform]"]}
