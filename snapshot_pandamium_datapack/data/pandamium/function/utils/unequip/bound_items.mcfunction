execute unless entity @s[type=player] run return 0

execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/head
execute if items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/chest
execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/legs
execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if predicate pandamium:player/can_pick_up_any_item in pandamium:staff_world run function pandamium:impl/unequip/feet

return 0
