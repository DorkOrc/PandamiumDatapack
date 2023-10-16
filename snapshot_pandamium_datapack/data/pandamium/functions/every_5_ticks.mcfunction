# temporary exploit patch
effect clear @e[predicate=pandamium:has_an_infinite_effect]

# Prevent player death invisibility exploit
# @a selects all players, @e[type=player] only alive ones
scoreboard players set @a temp_1 0
scoreboard players set @e[type=player] temp_1 1
execute as @a[scores={temp_1=0}] unless score @s detect.die matches 1.. positioned 0 1000 0 run function pandamium:utils/teleport/here/from_source {source:"die"}

# Cool-downs and timers
execute as @a[scores={tpa_request.sender_id=1..}] run function pandamium:impl/tpa/request_timer/every_5_ticks
scoreboard players remove @a[scores={gift_cooldown=1..}] gift_cooldown 5
scoreboard players remove @a[scores={rtp_cooldown=1..}] rtp_cooldown 5

# Jail stuff
execute as @a[predicate=pandamium:in_jail] unless score @s jailed matches 1.. unless score @s staff_perms matches 1.. run function pandamium:misc/warp/spawn
execute if entity @a[scores={jailed=1..},limit=1] run function pandamium:impl/jail_loop

# Remove mobs from spawn
execute in overworld as @e[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=!spawn_protected,type=#pandamium:remove_at_spawn] run function pandamium:utils/kill
execute in the_nether as @e[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=!spawn_protected,type=#pandamium:remove_at_spawn] run function pandamium:utils/kill

# Player regions
function pandamium:player/regions/update_regions
execute as @a[gamemode=spectator,scores={staff_perms=..1},predicate=!pandamium:in_spawn] run function pandamium:player/regions/restrictions/spectators_outside_spawn
execute in the_end as @a[x=0,gamemode=spectator,scores={staff_perms=..1}] run function pandamium:player/regions/restrictions/spectators_in_the_end

# Specatators
effect give @a[gamemode=spectator,scores={staff_perms=2..,spectator_night_vision=1},predicate=!pandamium:in_dimension/the_end] night_vision 20 0 true
execute as @a[gamemode=spectator,predicate=pandamium:can_take_void_damage] run function pandamium:misc/escape_void
execute as @a[gamemode=spectator] unless score @s disable_spectator_portals matches 1 at @s run function pandamium:impl/portal/loop

# Seats
execute as @a[predicate=pandamium:riding_aec_seat] at @s unless block ~ ~-0.0301 ~ #pandamium:cannot_sit_on on vehicle run data modify entity @s Age set value 0
execute as @a[scores={sneak_to_sit_timer=-1073741819..-1},predicate=!pandamium:riding_aec_seat] run scoreboard players set @s sneak_to_sit_timer 536870912

# Anti-bot mode
# [suspicious_ip] is set to 1 by an external program if a player's IP is flagged as suspicious
execute if score <anti_bot_mode> global matches 1 as @a[scores={suspicious_ip=1..,playtime_ticks=..6000}] run function pandamium:player/flagged_ip_ban
execute as @a[scores={suspicious_ip=1}] run function pandamium:player/flagged_ip

# Misc loops
execute as @a[scores={hidden=1..}] run function pandamium:impl/hide/every_5_ticks_as_player
#function pandamium:impl/parkour/loop
function pandamium:impl/particles/every_5_ticks
function pandamium:impl/idle/every_5_ticks

scoreboard players add <ticks_since_monthly_leaderboard_holograms_updated> global 5
execute if score <ticks_since_monthly_leaderboard_holograms_updated> global matches 1200.. positioned -271.5 139.0 120.5 if entity @a[distance=..15,limit=1] run function pandamium:impl/leaderboards/hologram/update_monthly_leaderboard_holograms

# Misc
function pandamium:impl/main_loop/update_players_sleeping_percentage
execute unless score <disable_thunderstorms_timer> global matches 1 run function pandamium:impl/thunderstorms_loop

execute in pandamium:staff_world as @a[x=-6,y=63,z=8,dx=0,dy=3,dz=0] run function pandamium:misc/warp/spawn
execute as @a[x=-512,y=50,z=-512,dx=1024,dy=334,dz=1024] at @s run advancement grant @s[x=-150,z=150,distance=200..] only pandamium:run_once/walk_out_of_spawn
scoreboard players reset @a[predicate=!pandamium:riding_minecart] advancement.on_a_rail
