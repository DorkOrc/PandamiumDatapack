# arguments: entity_type, nbt

execute unless entity @s[name="DorkOrc"] run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" You are not a DorkOrc!","color":"red"}]
execute if entity 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" An entity with uuid 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 already exists!","color":"red"}]
execute unless entity @s[scores={hidden=1..}] run trigger hide

$data modify storage pandamium:temp entity_type set value '$(entity_type)'
data modify storage pandamium:temp prefix set value ''
data modify storage pandamium:temp prefix set string storage pandamium:temp entity_type 0 10
execute if data storage pandamium:temp {prefix:'minecraft:'} run data modify storage pandamium:temp entity_type set string storage pandamium:temp entity_type 10

scoreboard players set <valid_entity_type> variable 0
execute \
    unless data storage pandamium:temp {entity_type:"ender_dragon"} \
    unless data storage pandamium:temp {entity_type:"item"} \
    unless data storage pandamium:temp {entity_type:"tnt"} \
    unless data storage pandamium:temp {entity_type:"tnt_minecart"} \
    unless data storage pandamium:temp {entity_type:"marker"} \
    unless data storage pandamium:temp {entity_type:"lightning_bolt"} \
    unless data storage pandamium:temp {entity_type:"interaction"} \
    unless data storage pandamium:temp {entity_type:"evoker_fangs"} \
    unless data storage pandamium:temp {entity_type:"area_effect_cloud"} \
    unless data storage pandamium:temp {entity_type:"lightning_bolt"} \
        run scoreboard players set <valid_entity_type> variable 1
execute if score <valid_entity_type> variable matches 0 run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},[{"text":" Invalid entity type: ","color":"red"},{"storage":"pandamium:temp","nbt":"entity_type","color":"yellow"},"!"]]

$summon $(entity_type) ~ ~ ~ {UUID:[I;-1676128454,971656995,-1208648925,-1364431337],Team:"no_collision",NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["spawn_protected","disguise"]}
$data merge entity 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 $(nbt)
