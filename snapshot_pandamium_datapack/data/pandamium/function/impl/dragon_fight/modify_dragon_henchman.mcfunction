team join dragon_fight @s
execute store result entity @s attributes[{id:"minecraft:scale"}].modifiers[{id:"pandamium:dragon_henchman_scale_modifier",operation:"add_multiplied_base"}].amount double 0.1 store result entity @s attributes[{id:"minecraft:max_health"}].modifiers[{id:"pandamium:dragon_henchman_max_health_modifier",operation:"add_multiplied_base"}].amount double 2 run random value -4..4
execute store result entity @s Health float 1 run attribute @s minecraft:max_health get
