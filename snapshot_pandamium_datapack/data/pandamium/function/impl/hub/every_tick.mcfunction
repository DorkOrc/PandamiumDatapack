function pandamium:impl/hub/fx

# 
execute as @a[x=0,y=318,z=0,dx=0] run function pandamium:misc/warp/spawn

scoreboard players add @a[x=0,scores={parkour.checkpoint=0..}] parkour.timer_ticks 1
scoreboard players set @a[x=0,scores={advancement.on_a_rail=1..}] advancement.on_a_rail 0

execute as @a[x=0,predicate=pandamium:wearing_frost_walker_enchantment_on_feet] run function pandamium:utils/unequip/feet
