data modify entity @s {} merge from storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data

tag @s add pandamium.squid_cannon.squid
execute summon snowball run function pandamium:detect/use_squid_cannon/as_snowball
tag @s remove pandamium.squid_cannon.squid
