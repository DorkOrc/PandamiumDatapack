# This is an exception because the point of the trigger was to transfer pets. Other entities do not need migration functions.
execute if data storage pandamium:temp save_mob.pet{CatType:0} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:tabby"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:1} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:black"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:2} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:red"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:3} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:siamese"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:4} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:british_shorthair"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:5} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:calico"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:6} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:persian"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:7} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:ragdoll"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:8} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:white"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:9} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:jellie"}}}
execute if data storage pandamium:temp save_mob.pet{CatType:10} run data merge storage pandamium:temp {save_mob:{pet:{variant:"minecraft:all_black"}}}
data remove storage pandamium:temp save_mob.pet.CatType
