tag @s add pandamium.squid_cannon.projectile
data merge entity @s {Item:{id:"minecraft:ink_sac"},LeftOwner:false}

ride @e[type=#pandamium:squids,limit=1,distance=..0.01,tag=pandamium.squid_cannon.squid] mount @s

function pandamium:utils/get/direction_vector {magnitude:1.25}
data modify entity @s Motion set from storage pandamium:temp vector
