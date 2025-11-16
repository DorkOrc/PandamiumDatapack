advancement revoke @s only pandamium:detect/tie_dye_outfit

execute unless items entity @s armor.feet *[dyed_color] run return 0
execute unless items entity @s armor.legs *[dyed_color] run return 0
execute unless items entity @s armor.chest *[dyed_color] run return 0
execute unless items entity @s armor.head *[dyed_color] run return 0

data modify storage pandamium:temp equipment set from entity @s equipment
execute store result score <boots_color> variable run data get storage pandamium:temp equipment.feet.components.minecraft:dyed_color
execute store result score <leggings_color> variable run data get storage pandamium:temp equipment.legs.components.minecraft:dyed_color
execute store result score <chestplate_color> variable run data get storage pandamium:temp equipment.chest.components.minecraft:dyed_color
execute store result score <helmet_color> variable run data get storage pandamium:temp equipment.head.components.minecraft:dyed_color

execute \
  unless score <boots_color> variable = <leggings_color> variable \
  unless score <boots_color> variable = <chestplate_color> variable \
  unless score <boots_color> variable = <helmet_color> variable \
  unless score <leggings_color> variable = <chestplate_color> variable \
  unless score <leggings_color> variable = <helmet_color> variable \
  unless score <chestplate_color> variable = <helmet_color> variable \
    run advancement grant @s only pandamium:minecraft/husbandry/tie_dye_outfit
