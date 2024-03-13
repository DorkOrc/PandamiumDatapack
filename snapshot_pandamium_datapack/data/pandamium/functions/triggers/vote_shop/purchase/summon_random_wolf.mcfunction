execute store result score <variant> variable run random value 1..8

#execute if score <variant> variable matches 0 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:pale"}
execute if score <variant> variable matches 1 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:ashen"}
execute if score <variant> variable matches 2 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:black"}
execute if score <variant> variable matches 3 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:chestnut"}
execute if score <variant> variable matches 4 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:rusty"}
execute if score <variant> variable matches 5 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:snowy"}
execute if score <variant> variable matches 6 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:spotted"}
execute if score <variant> variable matches 7 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:striped"}
execute if score <variant> variable matches 8 summon minecraft:wolf run return run data merge entity @s {Tags: ["unnatural"], variant: "minecraft:woods"}

return fail
