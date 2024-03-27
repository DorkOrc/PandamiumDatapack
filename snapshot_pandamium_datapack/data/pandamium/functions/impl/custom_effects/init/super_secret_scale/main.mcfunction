execute store result storage pandamium:templates macro.value.value float 0.1 run random value -5..-1
execute if predicate pandamium:coin_flip store result storage pandamium:templates macro.value.value float 0.1 run random value 1..10

function pandamium:impl/custom_effects/init/super_secret_scale/with_value with storage pandamium:templates macro.value
