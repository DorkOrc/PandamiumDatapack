# check that every armour slot is dyed and that the custom_dye armour option is not enabled
scoreboard players set <all_dyed> variable 0
execute unless predicate pandamium:player/enabled_custom_dye if items entity @s armor.feet leather_boots[dyed_color] if items entity @s armor.legs leather_leggings[dyed_color] if items entity @s armor.chest leather_chestplate[dyed_color] if items entity @s armor.head leather_helmet[dyed_color] run scoreboard players set <all_dyed> variable 1
execute if score <all_dyed> variable matches 0 run return 0

execute if items entity @s armor.* *[custom_data~{pandamium:{transient_equippable:{}}}] run return 0

# get the colours for each armour item
execute in pandamium:staff_world run item replace block 1 0 0 container.0 from entity @s armor.feet
execute in pandamium:staff_world run item replace block 1 0 0 container.1 from entity @s armor.legs
execute in pandamium:staff_world run item replace block 1 0 0 container.2 from entity @s armor.chest
execute in pandamium:staff_world run item replace block 1 0 0 container.3 from entity @s armor.head
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:detect/tie_dye_outfit/check_advancements".armor set from block 1 0 0 Items
execute store result score <boots_color> variable run data get storage pandamium:local functions."pandamium:detect/tie_dye_outfit/check_advancements".armor[0].components."minecraft:dyed_color"
execute store result score <leggings_color> variable run data get storage pandamium:local functions."pandamium:detect/tie_dye_outfit/check_advancements".armor[1].components."minecraft:dyed_color"
execute store result score <chestplate_color> variable run data get storage pandamium:local functions."pandamium:detect/tie_dye_outfit/check_advancements".armor[2].components."minecraft:dyed_color"
execute store result score <helmet_color> variable run data get storage pandamium:local functions."pandamium:detect/tie_dye_outfit/check_advancements".armor[3].components."minecraft:dyed_color"
data remove storage pandamium:local functions."pandamium:detect/tie_dye_outfit/check_advancements"

# if every item has a unique colour, grant the advancement
execute \
	unless score <boots_color> variable = <leggings_color> variable \
	unless score <boots_color> variable = <chestplate_color> variable \
	unless score <boots_color> variable = <helmet_color> variable \
	unless score <leggings_color> variable = <chestplate_color> variable \
	unless score <leggings_color> variable = <helmet_color> variable \
	unless score <chestplate_color> variable = <helmet_color> variable \
		run advancement grant @s only pandamium:minecraft/husbandry/tie_dye_outfit
