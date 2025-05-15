tag @s add pandamium.undead_rider

data merge entity @s {PersistenceRequired:1b,drop_chances:{head:0f,chest:0f,legs:0f,feet:0f,mainhand:0f,offhand:0f},VillagerData:{profession:"minecraft:none"},CustomName:{fallback:"Undead Rider",translate:"entity.pandamium.undead_rider"}}

execute if score <age> variable matches ..-1 run data modify entity @s IsBaby set value 1b

item replace entity @s armor.feet with netherite_boots[trim={material:"minecraft:resin",pattern:"minecraft:rib"},unbreakable={}]
item replace entity @s armor.legs with chainmail_leggings[unbreakable={}]
item replace entity @s armor.chest with netherite_chestplate[trim={material:"minecraft:resin",pattern:"minecraft:silence"},unbreakable={}]
item replace entity @s armor.head with carved_pumpkin
item replace entity @s weapon.mainhand with stone_axe[unbreakable={}]

attribute @s minecraft:spawn_reinforcements base set 1

tp @s ~ ~ ~
ride @s mount @n[type=zombie_horse,tag=this,distance=..0.01]

execute positioned as @s run particle minecraft:block_crumble{block_state:"pale_oak_wood"} ~ ~1 ~ 0.4 0.75 0.4 1 50
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..10] ~ ~ ~ 1.5

execute if entity @s[type=zombie] run playsound minecraft:entity.zombie.ambient hostile @a[distance=..20] ~ ~ ~ 1 0
execute if entity @s[type=husk] run playsound minecraft:entity.husk.ambient hostile @a[distance=..20] ~ ~ ~ 1 0

execute if entity @s[type=zombie] if predicate pandamium:coin_flip facing entity @p eyes rotated ~ 0 run summon minecraft:zombie_villager ^0.4 ^ ^0.4
execute if entity @s[type=zombie] if predicate pandamium:coin_flip facing entity @p eyes rotated ~ 0 run summon minecraft:zombie_villager ^-0.4 ^ ^0.4
execute if entity @s[type=husk] if predicate pandamium:coin_flip facing entity @p eyes rotated ~ 0 run summon minecraft:husk ^0.4 ^ ^0.4
execute if entity @s[type=husk] if predicate pandamium:coin_flip facing entity @p eyes rotated ~ 0 run summon minecraft:husk ^-0.4 ^ ^0.4
