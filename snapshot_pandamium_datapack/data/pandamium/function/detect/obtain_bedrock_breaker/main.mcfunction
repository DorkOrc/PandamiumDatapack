execute unless items entity @s container.* *[enchantments~[{enchantments:"pandamium:bedrock_breaker"}],!custom_data~{pandamium:{id:"bedrock_breaker"}}] \
        unless items entity @s weapon.offhand *[enchantments~[{enchantments:"pandamium:bedrock_breaker"}],!custom_data~{pandamium:{id:"bedrock_breaker"}}] \
        unless items entity @s armor.* *[enchantments~[{enchantments:"pandamium:bedrock_breaker"}],!custom_data~{pandamium:{id:"bedrock_breaker"}}] \
        unless items entity @s player.cursor *[enchantments~[{enchantments:"pandamium:bedrock_breaker"}],!custom_data~{pandamium:{id:"bedrock_breaker"}}] \
        unless items entity @s player.crafting.* *[enchantments~[{enchantments:"pandamium:bedrock_breaker"}],!custom_data~{pandamium:{id:"bedrock_breaker"}}] \
        unless items entity @s container.* *[bundle_contents~{items:{contains:[{items:["minecraft:leather_horse_armor","minecraft:netherite_pickaxe"],predicates:{"minecraft:enchantments":[{enchantments:"pandamium:bedrock_breaker"}]}}]}}] \
        unless items entity @s weapon.offhand *[bundle_contents~{items:{contains:[{items:["minecraft:leather_horse_armor","minecraft:netherite_pickaxe"],predicates:{"minecraft:enchantments":[{enchantments:"pandamium:bedrock_breaker"}]}}]}}] \
        unless items entity @s armor.* *[bundle_contents~{items:{contains:[{items:["minecraft:leather_horse_armor","minecraft:netherite_pickaxe"],predicates:{"minecraft:enchantments":[{enchantments:"pandamium:bedrock_breaker"}]}}]}}] \
        unless items entity @s player.cursor *[bundle_contents~{items:{contains:[{items:["minecraft:leather_horse_armor","minecraft:netherite_pickaxe"],predicates:{"minecraft:enchantments":[{enchantments:"pandamium:bedrock_breaker"}]}}]}}] \
        unless items entity @s player.crafting.* *[bundle_contents~{items:{contains:[{items:["minecraft:leather_horse_armor","minecraft:netherite_pickaxe"],predicates:{"minecraft:enchantments":[{enchantments:"pandamium:bedrock_breaker"}]}}]}}] \
        run return run advancement revoke @s only pandamium:detect/obtain_bedrock_breaker

item modify entity @s container.0 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.1 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.2 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.3 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.4 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.5 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.6 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.7 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.8 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.9 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.10 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.11 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.12 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.13 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.14 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.15 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.16 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.17 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.18 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.19 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.20 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.21 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.22 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.23 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.24 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.25 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.26 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.27 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.28 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.29 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.30 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.31 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.32 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.33 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.34 pandamium:fix_bedrock_breaker_recursive
item modify entity @s container.35 pandamium:fix_bedrock_breaker_recursive
item modify entity @s player.cursor pandamium:fix_bedrock_breaker_recursive
item modify entity @s weapon.offhand pandamium:fix_bedrock_breaker_recursive
item modify entity @s armor.head pandamium:fix_bedrock_breaker_recursive
item modify entity @s player.crafting.0 pandamium:fix_bedrock_breaker_recursive
item modify entity @s player.crafting.1 pandamium:fix_bedrock_breaker_recursive
item modify entity @s player.crafting.2 pandamium:fix_bedrock_breaker_recursive
item modify entity @s player.crafting.3 pandamium:fix_bedrock_breaker_recursive

advancement revoke @s only pandamium:detect/obtain_bedrock_breaker
