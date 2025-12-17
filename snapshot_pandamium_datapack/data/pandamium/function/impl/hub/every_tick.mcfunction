# FX
execute if entity @a[limit=1,x=0,predicate=!pandamium:player/any_invisible_staff_state] run function pandamium:impl/hub/fx

# elevator
execute if entity @a[limit=1,x=0,predicate=!pandamium:player/any_invisible_staff_state] run function pandamium:impl/hub/elevator/every_tick

# teleport players from the technical world spawn to the hub map centre
execute as @a[x=0,y=318,z=0,dx=0] run function pandamium:misc/warp/spawn

# teleport players outside the hub map world border back into the map
execute as @a[x=0,predicate=!pandamium:in_spawn_area_map] at @s run function pandamium:misc/clamp_entity_position_inside_hub_map

# prevent minecarts in hub map granting the on_a_rail advancement
scoreboard players set @a[x=0,scores={advancement.on_a_rail=1..}] advancement.on_a_rail 0

# unequip frost walker boots from players in hub map due to destructiveness
execute as @a[x=0,predicate=pandamium:wearing_frost_walker_enchantment_on_feet] at @s run function pandamium:utils/unequip/feet

# parkour timer ticking
scoreboard players add @a[x=0,scores={parkour.checkpoint=0..}] parkour.timer_ticks 1
