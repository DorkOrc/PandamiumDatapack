execute in the_end as @e[x=0,y=64,z=0,distance=..300,type=enderman,team=!dragon_fight] store result entity @s Attributes[{Name:"minecraft:generic.scale"}].Base double 0.1 store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 2 store result entity @s Health float 2 run random value 8..12
execute in the_end run team join dragon_fight @e[x=0,y=64,z=0,distance=..300,type=enderman]
execute in the_end run effect clear @a[x=0,y=64,z=0,distance=..300] darkness
execute in the_end run effect give @e[type=phantom,team=dragon_fight,x=0,predicate=pandamium:has_passenger] resistance 2 10 true
execute in the_end run effect give @e[type=bat,team=dragon_fight,x=0,predicate=pandamium:has_passenger] resistance 2 10 true
execute in the_end at @e[type=breeze,team=dragon_fight,x=0] run particle dragon_breath ~ ~ ~ 1 0.5 1 0 1

execute in the_end run kill @e[x=0,y=64,z=0,distance=..300,type=end_crystal,tag=dragon_fight,predicate=!pandamium:riding_entity]

execute unless score <dragon_fight_spawned_reinforcements> global matches 1 in the_end store result score <phantom_crystals_left> variable if entity @e[type=end_crystal,tag=dragon_fight,x=0]
execute unless score <dragon_fight_spawned_reinforcements> global matches 1 if score <phantom_crystals_left> variable matches ..2 in the_end positioned 0 60 0 if entity @a[limit=1,distance=..40] run function pandamium:impl/dragon_fight/spawn_reinforcements

scoreboard players set <dragon_fight_loop> variable 1
execute in the_end if loaded 0 65 0 unless entity @e[type=ender_dragon,x=0] run scoreboard players set <dragon_fight_loop> variable 2
execute if score <dragon_fight_loop> variable matches 1 run schedule function pandamium:impl/dragon_fight/loop_dragon 5t
execute if score <dragon_fight_loop> variable matches 2 run function pandamium:impl/dragon_fight/end
