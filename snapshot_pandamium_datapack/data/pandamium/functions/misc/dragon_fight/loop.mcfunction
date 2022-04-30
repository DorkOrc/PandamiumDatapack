execute in the_end run team join dragon_fight @e[type=enderman,x=0]
execute in the_end as @e[type=phantom,team=dragon_fight] if data entity @s Passengers run effect give @s resistance 1 5 true

execute in the_end if entity @e[type=ender_dragon,x=0] run schedule function pandamium:misc/dragon_fight/loop 5t


