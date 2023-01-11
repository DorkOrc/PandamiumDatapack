tag @e remove raycast.target
scoreboard players set <ttl> variable 160
scoreboard players set <raycast_hit_target> variable 0
execute store success score <raycast_obstructable> variable unless entity @s[gamemode=spectator]

scoreboard players set <hit> variable 0
