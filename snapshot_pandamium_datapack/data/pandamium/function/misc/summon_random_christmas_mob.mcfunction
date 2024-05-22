execute store result score <entity_type> variable run random value 1..6

execute if score <entity_type> variable matches 1 summon minecraft:zombie run function pandamium:impl/christmas_mobs/initialise_entity
execute if score <entity_type> variable matches 2 summon minecraft:husk run function pandamium:impl/christmas_mobs/initialise_entity
execute if score <entity_type> variable matches 3 summon minecraft:drowned run function pandamium:impl/christmas_mobs/initialise_entity
execute if score <entity_type> variable matches 4 summon minecraft:skeleton run function pandamium:impl/christmas_mobs/initialise_entity
execute if score <entity_type> variable matches 5 summon minecraft:stray run function pandamium:impl/christmas_mobs/initialise_entity
execute if score <entity_type> variable matches 6 summon minecraft:wither_skeleton run function pandamium:impl/christmas_mobs/initialise_entity
