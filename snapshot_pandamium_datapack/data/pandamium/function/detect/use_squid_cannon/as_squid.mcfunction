data modify entity @s {} merge from storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data
data modify entity @s Air set value 300s

tag @s add pandamium.squid_cannon.squid
execute summon arrow run function pandamium:detect/use_squid_cannon/as_snowball
tag @s remove pandamium.squid_cannon.squid

execute if score <ctrl> variable matches 1 run ride @a[tag=pandamium.squid_cannon.player,limit=1] mount @s
