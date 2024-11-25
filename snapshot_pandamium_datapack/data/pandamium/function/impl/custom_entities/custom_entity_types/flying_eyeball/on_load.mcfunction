execute store result score <nearby> variable if entity @e[type=phantom,tag=pandamium.custom_entity.type.flying_eyeball,distance=..50]
execute if score <nearby> variable matches 11.. run tag @s add pandamium.custom_entity.data.this
execute if score <nearby> variable matches 11.. as @n[type=phantom,tag=pandamium.custom_entity.type.flying_eyeball,tag=!pandamium.custom_entity.data.this,distance=..50,sort=random] run function pandamium:utils/kill_entity_stack_poof
execute if score <nearby> variable matches 11.. run tag @s remove pandamium.custom_entity.data.this
execute if score <nearby> variable matches 11.. run return 0

data modify entity @s CustomName set value '{"translate":"entity.pandamium.flying_eyeball","fallback":"Flying Eyeball"}'

return 1
