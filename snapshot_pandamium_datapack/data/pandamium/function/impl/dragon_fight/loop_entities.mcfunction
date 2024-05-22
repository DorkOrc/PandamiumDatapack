execute in the_end as @e[x=0,y=64,z=0,distance=..300,type=enderman,team=!dragon_fight] store result entity @s Attributes[{Name:"minecraft:generic.scale"}].Base double 0.1 store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 2 store result entity @s Health float 2 run random value 8..12
execute in the_end run team join dragon_fight @e[x=0,y=64,z=0,distance=..300,type=enderman]
execute in the_end run effect clear @a[x=0,y=64,z=0,distance=..300] darkness

scoreboard players set <dragon_fight_loop> variable 2
execute in the_end if blocks 0 0 0 0 0 0 0 0 0 all unless entity @e[type=warden,team=dragon_fight,x=0] run scoreboard players reset <dragon_fight_loop> variable
execute if score <dragon_fight_loop> variable matches 2 run schedule function pandamium:impl/dragon_fight/loop_entities 5t
