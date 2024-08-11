execute if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" You must not be in spectator mode whilst setting a warp!","color":"red"}]
execute unless predicate pandamium:on_ground run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" You must be on the ground to set a warp!","color":"red"}]

execute unless dimension the_end run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" Failed to set ","color":"red"},{"text":"Enderman Farm","color":"yellow"}," warp here! This warp can only be set in ",{"storage":"pandamium:dictionary","nbt":"dimension.minecraft:the_end.name","color":"yellow"},"."]]

execute unless loaded ~ ~ ~ run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" Failed to set ","color":"red"},{"text":"Enderman Farm","color":"yellow"}," warp here! This is not a loaded position."]]

execute unless block ~ ~ ~ #pandamium:no_solid_collision run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" Failed to set ","color":"red"},{"text":"Enderman Farm","color":"yellow"}," warp here! There is not enough space for players to stand here."]]
execute unless block ~ ~1 ~ #pandamium:no_solid_collision run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" Failed to set ","color":"red"},{"text":"Enderman Farm","color":"yellow"}," warp here! There is not enough space for players to stand here."]]

execute unless block ~ ~-1 ~ #pandamium:warp_platform_cannot_replace align xyz run loot spawn ~.5 ~ ~.5 mine ~ ~-1 ~ diamond_pickaxe[enchantments={silk_touch:1}]
execute unless block ~ ~-1 ~ #pandamium:warp_platform_cannot_replace run setblock ~ ~-1 ~ obsidian
execute unless block ~ ~-1 ~ #pandamium:warp_platform_cannot_replace run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" Failed to set ","color":"red"},{"text":"Enderman Farm","color":"yellow"}," warp here! Could not place obsidian below you."]]

data modify storage pandamium:global enderman_farm_warp set value {protected: 0b, dimension: "minecraft:the_end"}
scoreboard players set <enderman_farm_warp.protected> global 0
function pandamium:utils/get/position
execute store result storage pandamium:global enderman_farm_warp.x int 1 run scoreboard players get <x> variable
execute store result storage pandamium:global enderman_farm_warp.y int 1 run scoreboard players get <y> variable
execute store result storage pandamium:global enderman_farm_warp.z int 1 run scoreboard players get <z> variable

execute align xyz run particle minecraft:falling_dust{block_state:{Name:"minecraft:ice"}} ~.5 ~.5 ~.5

function pandamium:triggers/enderman_farm.config/print_menu
tellraw @s [{"text":"[Enderman Farm]","color":"dark_green"},[{"text":" ","color":"green"},{"text":"Set","color":"aqua"}," the ",{"text":"Enderman Farm","color":"aqua"}," warp at ",{"storage":"pandamium:global","nbt":"enderman_farm_warp.x","color":"aqua"}," ",{"storage":"pandamium:global","nbt":"enderman_farm_warp.y","color":"aqua"}," ",{"storage":"pandamium:global","nbt":"enderman_farm_warp.z","color":"aqua"}," in ",{"storage":"pandamium:dictionary","nbt":"dimension.minecraft:the_end.name","color":"aqua"},"! Protection is turned off."]]
