execute store result score <absorption_amount> variable run data get storage pandamium:temp nbt.AbsorptionAmount
execute unless data storage pandamium:temp nbt{AbsorptionAmount:0f} run scoreboard players set <absorption_amount> variable 1
execute if score <absorption_amount> variable matches 1.. run data modify storage pandamium:temp attack_indicator.absorption_string set value '[{"text":"+","color":"#D4AF37"},{"score":{"name":"<absorption_amount>","objective":"variable"}}]'
