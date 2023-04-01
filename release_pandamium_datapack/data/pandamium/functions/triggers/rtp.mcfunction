execute if score @s rtp_cooldown matches 1.. run function pandamium:misc/teleport/random/player/print_cooldown
execute unless score @s rtp_cooldown matches 1.. run function pandamium:misc/teleport/random/main

scoreboard players reset @s rtp
scoreboard players enable @s rtp
