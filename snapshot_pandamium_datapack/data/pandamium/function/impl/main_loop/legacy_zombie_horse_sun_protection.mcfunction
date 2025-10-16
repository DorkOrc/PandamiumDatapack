tag @s add pandamium.legacy_zombie_horse_sun_protection

execute if items entity @s armor.body * run return 0
execute if predicate pandamium:coin_flip run return run item replace entity @s armor.body with leather_horse_armor[dyed_color=0x4d5e31,custom_name="SPF 500 Sun Lotion"]
execute if predicate pandamium:coin_flip run return run item replace entity @s armor.body with leather_horse_armor[dyed_color=0x4d5e31,custom_name="Full-Body Sun Hat"]
execute if predicate pandamium:coin_flip run return run item replace entity @s armor.body with leather_horse_armor[dyed_color=0x4d5e31,custom_name="Wearable Parasol"]
item replace entity @s armor.body with leather_horse_armor[dyed_color=0x4d5e31,custom_name="Sun Protection"]
