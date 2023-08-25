#{
#	action: "teleport_to_end_platform",
#	player: INT
#}

execute if score <wait> variable matches ..-20 run tellraw @a {"text":"Gave up trying to teleport player to end platform after 20 failed attempts.","color":"red"}
execute if score <wait> variable matches ..-20 run return 0

execute in the_end unless loaded 100 48 0 run function pandamium:impl/queue/run/recycle
execute in the_end unless loaded 100 48 0 run return 0

execute in the_end run setblock 100 48 0 bedrock
execute in the_end run fill 98 49 -2 102 51 2 moving_piston
execute if data storage pandamium:queue this.player store result score <id> variable run data get storage pandamium:queue this.player
execute if data storage pandamium:queue this.player as @a if score @s id = <id> variable in the_end rotated as @s positioned 100 49 0 run function pandamium:utils/teleport/here
