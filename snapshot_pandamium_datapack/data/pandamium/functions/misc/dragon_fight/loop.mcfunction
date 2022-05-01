execute in the_end run team join dragon_fight @e[type=enderman,x=0]
execute in the_end as @e[type=phantom,team=dragon_fight] if data entity @s Passengers run effect give @s resistance 1 5 true
execute in the_end positioned 0 64 0 run effect clear @a[distance=..100] darkness

scoreboard players set <loop> variable 1
execute in the_end unless entity @e[type=ender_dragon,x=0] if blocks 0 0 0 0 0 0 0 0 0 all run scoreboard players set <loop> variable 0
execute in the_end if score <loop> variable matches 1 run schedule function pandamium:misc/dragon_fight/loop 5t
