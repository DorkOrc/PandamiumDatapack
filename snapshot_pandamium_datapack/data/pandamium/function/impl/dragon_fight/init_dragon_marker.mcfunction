tag @s add dragon_fight.dragon_marker
ride @s mount @e[type=ender_dragon,x=0,limit=1]
execute unless predicate pandamium:riding_entity run kill @s
