execute unless items entity @s armor.* #pandamium:leather_player_armor[!dyed_color] run return 0
execute unless score @s custom_dye.fixed_color matches 0..16777215 run return run title @s actionbar "cancelled modification: invalid color"

execute store result storage pandamium:local functions."pandamium:impl/transient_equippable/custom_dye_types/fixed_color/main".rgb int 1 run scoreboard players get @s custom_dye.fixed_color

function pandamium:impl/transient_equippable/custom_dye_types/fixed_color/modify with storage pandamium:local functions."pandamium:impl/transient_equippable/custom_dye_types/fixed_color/main"
