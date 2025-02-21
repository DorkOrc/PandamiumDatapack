execute in the_end unless entity @a[distance=..50,x=0,y=64,z=0] run return run schedule function pandamium:impl/dragon_fight/prevent_darkness_effect 5t

execute in the_end run effect clear @a[distance=..200,x=0,y=64,z=0] darkness
execute in the_end unless entity @e[type=warden,distance=..200,x=0,y=64,z=0] run return 0

schedule function pandamium:impl/dragon_fight/prevent_darkness_effect 5t
