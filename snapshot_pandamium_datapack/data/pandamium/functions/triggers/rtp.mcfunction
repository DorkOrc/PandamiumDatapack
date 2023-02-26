execute if score @s jailed matches 1.. run tellraw @s [{"text":"[RTP]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute unless score @s jailed matches 1.. if score @s rtp_cooldown matches 1.. run function pandamium:misc/teleport/random/player/print_cooldown
execute unless score @s jailed matches 1.. unless score @s rtp_cooldown matches 1.. run function pandamium:misc/teleport/random/main

scoreboard players reset @s rtp
scoreboard players enable @s rtp
