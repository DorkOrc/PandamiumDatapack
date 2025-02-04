execute in the_end unless loaded 0 0 0 run return run schedule function pandamium:impl/dragon_fight/wait 1t
execute in the_end unless loaded 50 0 0 run return run schedule function pandamium:impl/dragon_fight/wait 1t
execute in the_end unless loaded 0 0 50 run return run schedule function pandamium:impl/dragon_fight/wait 1t
execute in the_end unless loaded -50 0 0 run return run schedule function pandamium:impl/dragon_fight/wait 1t
execute in the_end unless loaded 0 0 -50 run return run schedule function pandamium:impl/dragon_fight/wait 1t
execute in the_end unless entity @e[type=ender_dragon,x=0,limit=1] run return run schedule function pandamium:impl/dragon_fight/wait 1t

function pandamium:impl/dragon_fight/start
