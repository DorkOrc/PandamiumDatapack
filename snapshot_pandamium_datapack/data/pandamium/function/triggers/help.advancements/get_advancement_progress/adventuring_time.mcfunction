scoreboard players set <goal> variable 54
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing set value []

execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:badlands":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.badlands"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:badlands"},"insertion":"minecraft:badlands"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:bamboo_jungle":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.bamboo_jungle"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:bamboo_jungle"},"insertion":"minecraft:bamboo_jungle"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:beach":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.beach"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:beach"},"insertion":"minecraft:beach"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:birch_forest":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.birch_forest"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:birch_forest"},"insertion":"minecraft:birch_forest"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:cherry_grove":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.cherry_grove"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:cherry_grove"},"insertion":"minecraft:cherry_grove"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:cold_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.cold_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:cold_ocean"},"insertion":"minecraft:cold_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:dark_forest":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.dark_forest"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:dark_forest"},"insertion":"minecraft:dark_forest"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:deep_cold_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.deep_cold_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:deep_cold_ocean"},"insertion":"minecraft:deep_cold_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:deep_dark":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.deep_dark"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:deep_dark"},"insertion":"minecraft:deep_dark"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:deep_frozen_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.deep_frozen_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:deep_frozen_ocean"},"insertion":"minecraft:deep_frozen_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:deep_lukewarm_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.deep_lukewarm_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:deep_lukewarm_ocean"},"insertion":"minecraft:deep_lukewarm_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:deep_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.deep_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:deep_ocean"},"insertion":"minecraft:deep_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:desert":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.desert"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:desert"},"insertion":"minecraft:desert"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:dripstone_caves":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.dripstone_caves"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:dripstone_caves"},"insertion":"minecraft:dripstone_caves"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:eroded_badlands":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.eroded_badlands"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:eroded_badlands"},"insertion":"minecraft:eroded_badlands"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:flower_forest":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.flower_forest"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:flower_forest"},"insertion":"minecraft:flower_forest"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:forest":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.forest"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:forest"},"insertion":"minecraft:forest"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:frozen_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.frozen_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:frozen_ocean"},"insertion":"minecraft:frozen_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:frozen_peaks":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.frozen_peaks"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:frozen_peaks"},"insertion":"minecraft:frozen_peaks"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:frozen_river":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.frozen_river"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:frozen_river"},"insertion":"minecraft:frozen_river"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:grove":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.grove"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:grove"},"insertion":"minecraft:grove"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:ice_spikes":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.ice_spikes"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:ice_spikes"},"insertion":"minecraft:ice_spikes"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:jagged_peaks":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.jagged_peaks"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:jagged_peaks"},"insertion":"minecraft:jagged_peaks"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:jungle":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.jungle"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:jungle"},"insertion":"minecraft:jungle"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:lukewarm_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.lukewarm_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:lukewarm_ocean"},"insertion":"minecraft:lukewarm_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:lush_caves":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.lush_caves"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:lush_caves"},"insertion":"minecraft:lush_caves"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:mangrove_swamp":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.mangrove_swamp"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:mangrove_swamp"},"insertion":"minecraft:mangrove_swamp"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:meadow":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.meadow"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:meadow"},"insertion":"minecraft:meadow"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:mushroom_fields":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.mushroom_fields"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:mushroom_fields"},"insertion":"minecraft:mushroom_fields"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:ocean"},"insertion":"minecraft:ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:old_growth_birch_forest":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.old_growth_birch_forest"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:old_growth_birch_forest"},"insertion":"minecraft:old_growth_birch_forest"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:old_growth_pine_taiga":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.old_growth_pine_taiga"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:old_growth_pine_taiga"},"insertion":"minecraft:old_growth_pine_taiga"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:old_growth_spruce_taiga":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.old_growth_spruce_taiga"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:old_growth_spruce_taiga"},"insertion":"minecraft:old_growth_spruce_taiga"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:pale_garden":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.pale_garden"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:pale_garden"},"insertion":"minecraft:pale_garden"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:plains":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.plains"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:plains"},"insertion":"minecraft:plains"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:river":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.river"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:river"},"insertion":"minecraft:river"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:savanna":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.savanna"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:savanna"},"insertion":"minecraft:savanna"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:savanna_plateau":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.savanna_plateau"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:savanna_plateau"},"insertion":"minecraft:savanna_plateau"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:snowy_beach":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.snowy_beach"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:snowy_beach"},"insertion":"minecraft:snowy_beach"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:snowy_plains":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.snowy_plains"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:snowy_plains"},"insertion":"minecraft:snowy_plains"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:snowy_slopes":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.snowy_slopes"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:snowy_slopes"},"insertion":"minecraft:snowy_slopes"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:snowy_taiga":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.snowy_taiga"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:snowy_taiga"},"insertion":"minecraft:snowy_taiga"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:sparse_jungle":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.sparse_jungle"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:sparse_jungle"},"insertion":"minecraft:sparse_jungle"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:stony_peaks":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.stony_peaks"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:stony_peaks"},"insertion":"minecraft:stony_peaks"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:stony_shore":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.stony_shore"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:stony_shore"},"insertion":"minecraft:stony_shore"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:sunflower_plains":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.sunflower_plains"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:sunflower_plains"},"insertion":"minecraft:sunflower_plains"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:swamp":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.swamp"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:swamp"},"insertion":"minecraft:swamp"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:taiga":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.taiga"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:taiga"},"insertion":"minecraft:taiga"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:warm_ocean":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.warm_ocean"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:warm_ocean"},"insertion":"minecraft:warm_ocean"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:windswept_forest":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.windswept_forest"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:windswept_forest"},"insertion":"minecraft:windswept_forest"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:windswept_gravelly_hills":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.windswept_gravelly_hills"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:windswept_gravelly_hills"},"insertion":"minecraft:windswept_gravelly_hills"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:windswept_hills":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.windswept_hills"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:windswept_hills"},"insertion":"minecraft:windswept_hills"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:windswept_savanna":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.windswept_savanna"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:windswept_savanna"},"insertion":"minecraft:windswept_savanna"}'}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":{"minecraft:wooded_badlands":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[{"translate":"biome.minecraft.wooded_badlands"},"]"],"hoverEvent":{"action":"show_text","contents":"minecraft:wooded_badlands"},"insertion":"minecraft:wooded_badlands"}'}

execute store result score <total_missing> variable if data storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing[]
scoreboard players operation <total_completed> variable = <goal> variable
scoreboard players operation <total_completed> variable -= <total_missing> variable
