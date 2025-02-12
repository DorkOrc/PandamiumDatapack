execute in the_end as @e[x=0,y=64,z=0,distance=..300,type=enderman,team=!dragon_fight] run function pandamium:impl/dragon_fight/modify_dragon_henchman
execute in the_end run effect clear @a[x=0,y=64,z=0,distance=..300] darkness
execute in the_end run effect give @e[type=phantom,team=dragon_fight,x=0,predicate=pandamium:has_passenger] resistance 2 10 true
execute in the_end run effect give @e[type=bat,team=dragon_fight,x=0,predicate=pandamium:has_passenger] resistance 2 10 true
execute in the_end at @e[type=breeze,team=dragon_fight,x=0] run particle dragon_breath ~ ~ ~ 1 0.5 1 0 1

execute in the_end as @e[type=end_crystal,x=0,y=64,z=0,distance=..300,tag=dragon_fight,predicate=!pandamium:riding_entity] run function pandamium:utils/kill_technical_entity_discretely

execute unless score <dragon_fight_spawned_reinforcements> global matches 1 in the_end store result score <phantom_crystals_left> variable if entity @e[type=end_crystal,tag=dragon_fight,x=0]
execute unless score <dragon_fight_spawned_reinforcements> global matches 1 if score <phantom_crystals_left> variable matches ..2 in the_end positioned 0 60 0 if entity @a[limit=1,distance=..40] run function pandamium:impl/dragon_fight/spawn_reinforcements

execute in the_end if entity @e[type=marker,x=0,tag=dragon_fight.dragon_marker,predicate=!pandamium:riding_entity,limit=1] run return run function pandamium:impl/dragon_fight/end

schedule function pandamium:impl/dragon_fight/loop_dragon 5t
