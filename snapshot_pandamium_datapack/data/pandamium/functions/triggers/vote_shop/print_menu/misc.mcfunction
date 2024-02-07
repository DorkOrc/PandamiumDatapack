tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Rewards Shop","bold":true}," ========\n",[{"text":"Your Reward Credits: ","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"aqua"},{"text":"Vote for Pandamium","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger vote"}},{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}]]

tellraw @s {"text":"Misc:","bold":true,"color":"aqua"}
tellraw @s [{"text":" ","color":"green"},[{"text":"[Diamond]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1001"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Diamond\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"3 Reward Credits\",\"bold\":true}]']},Items:[{id:diamond,Count:1b}]}"}}}],"  |  ",[[{"text":"[5 Bottles o' Enchanting]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1002"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"5 Bottles o\\' Enchanting\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"1 Reward Credit\",\"bold\":true}]']},Items:[{id:experience_bottle,Count:5b}]}"}}}]],"  |  ",[{"text":"[Golden Apple]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1003"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Golden Apple\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"1 Reward Credit\",\"bold\":true}]']},Items:[{id:golden_apple,Count:1b}]}"}}}]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Endermite Spawn Egg]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1004"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Endermite Spawn Egg\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"1 Reward Credit\",\"bold\":true}]']},Items:[{id:endermite_spawn_egg,Count:1b}]}"}}}],"  |  ",[{"text":"[Swift Sneak III Enchanted Book]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1016"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Swift Sneak III\",\"bold\":true},\" enchanted book\"]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"30 Reward Credits\",\"bold\":true}]']},Items:[{id:enchanted_book,Count:1b}]}"}}}]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Mending Enchanted Book]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1005"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Mending\",\"bold\":true},\" enchanted book\"]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"10 Reward Credits\",\"bold\":true}]']},Items:[{id:enchanted_book,Count:1b}]}"}}}],"  |  ",[[{"text":"[Enchanted Golden Apple]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1006"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Enchanted Golden Apple\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"50 Reward Credits\",\"bold\":true}]']},Items:[{id:enchanted_golden_apple,Count:1b}]}"}}}]]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Potion of Luck]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1007"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Potion of Luck\",\"bold\":true}]',Lore:['{\"text\":\"Increases your chances of\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"getting higher quality loot\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"while fishing and looting\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"naturally generated chests for 5\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"minutes.\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"8 Reward Credits\",\"bold\":true}]']},Items:[{id:potion,Count:1b,tag:{Potion:luck}}]}"}}}],"  |  ",[{"text":"[Dwarven Potion]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1024"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Dwarven Potion\",\"bold\":true}]',Lore:['{\"text\":\"Allows your to instantly mine\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"certain blocks using certain\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"tools for 5 minutes.\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"25 Reward Credits\",\"bold\":true}]']},Items:[{id:potion,Count:1b,tag:{CustomPotionColor:14270531}}]}"}}}]," ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":["Drinking the Dwarven Potion will allow you to mine certain blocks instantly ",{"text":"under certain conditions","underlined":true},".\nHere are some tips you can follow to ensure you get the best out of the potion:\n\nTo instantly mine ",{"color":"aqua","text":"Deepslate"}," requires\n• a ",{"color":"yellow","text":"Netherite"}," pickaxe with ",{"color":"green","text":"Efficiency V"},"\n\nTo instantly mine ",{"color":"aqua","text":"Stone"}," requires either\n• a ",{"color":"yellow","text":"Netherite, Diamond or Golden"}," pickaxe with ",{"color":"green","text":"Efficiency III"},"\n• a ",{"color":"yellow","text":"Iron, Stone or Wooden"}," pickaxe with ",{"color":"green","text":"Efficiency IV"},"\n\nTo learn more about block breaking speeds, visit ",{"text":"minecraft.wiki/w/Breaking#Speed","color":"blue","underlined":true}]},"clickEvent":{"action":"open_url","value":"https://minecraft.wiki/w/Breaking#Speed"}},"  |  ",[{"text":"[Knockback Stick]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1017"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Knockback Stick\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"10 Reward Credits\",\"bold\":true}]']},Items:[{id:stick,Count:1b,tag:{Enchantments:[{}]}}]}"}}}]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Spawn a Shulker]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1011"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn a Shulker","bold":true}],{"text":"\nSummons a Shulker at your\nlocation.","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"10 Reward Credits","bold":true}]]}}],"  |  ",[[{"text":"[Spawn a Zombie Horse]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1014"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn a Zombie Horse","bold":true}],{"text":"\nSummons a Zombie Horse at your\nlocation. The Zombie Horse will\nautomatically be tamed and\nrideable.","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"20 Reward Credits","bold":true}]]}}]]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Caves & Cliffs Loot Bundle]","color":"#7B00EC","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1012"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"#7B00EC\",\"italic\":false},{\"text\":\"Caves & Cliffs Loot Bundle\",\"bold\":true}]',Lore:['{\"text\":\"An assortment of random items\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"relating to the Caves and Cliffs\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"update, and a 1/3 chance of\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"getting a Sculk Sensor!\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"25 Reward Credits\",\"bold\":true}]']},Items:[{id:bundle,Count:1b,tag:{Enchantments:[{}],Items:[{id:dirt,Count:60b}]}}]}"}}}],"  |  ",[[{"text":"[Wild Loot Bundle]","color":"#7B00EC","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1015"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"#7B00EC\",\"italic\":false},{\"text\":\"Wild Loot Bundle\",\"bold\":true}]',Lore:['{\"text\":\"An assortment of random items\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"relating to the Wild Update!\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"25 Reward Credits\",\"bold\":true}]']},Items:[{id:bundle,Count:1b,tag:{Enchantments:[{}],Items:[{id:dirt,Count:60b}]}}]}"}}}]]]
tellraw @s [{"text":" ","color":"green"},[[{"text":"[Trails & Tales Loot Bundle]","color":"#7B00EC","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1021"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"#7B00EC\",\"italic\":false},{\"text\":\"Trails & Tales Loot Bundle\",\"bold\":true}]',Lore:['{\"text\":\"An assortment of random items\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"relating to the Trails & Tales\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"Update!\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"25 Reward Credits\",\"bold\":true}]']},Items:[{id:bundle,Count:1b,tag:{Enchantments:[{}],Items:[{id:dirt,Count:60b}]}}]}"}}}]],"  |  ",[{"text":"[Break 1 Bedrock Block]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1013"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"dark_blue"},{"text":"Break 1 Bedrock Block","bold":true}],{"text":"\nBreaks the bedrock block that\nyou are looking at (as long as\nit is not at the bottom of the\nworld).","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"1 Reward Credit","bold":true}]]}}]]

tellraw @s {"text":"\n1.21 Update:","bold":true,"color":"aqua"}
tellraw @s [{"text":"","color":"green"}," ",[{"text":"[Crafter]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1022"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Crafter\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"6 Reward Credits\",\"bold\":true}]']},Items:[{id:crafter,Count:1b}]}"}}}],"  |  ",[{"text":"[Wolf Armour]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1027"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Wolf Armour\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"12 Reward Credits\",\"bold\":true}]']},Items:[{id:wolf_armor,Count:1b}]}"}}}],"  |  ",[{"text":"[16 Wind Charges]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1026"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"16 Wind Charges\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"3 Reward Credits\",\"bold\":true}]']},Items:[{id:wind_charge,Count:16b}]}"}}}]]
tellraw @s [{"text":"","color":"green"}," ",[{"text":"[Spawn a Breeze]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1023"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn a Breeze","bold":true}],{"text":"\nSummons a Breeze at your\nlocation.","color":"gray"},{"text":"\nBreezes spawned from here will\nnot drop mob heads.","color":"red"},[{"text":"\nCost: ","color":"green"},{"text":"25 Reward Credits","bold":true}]]}}],"  |  ",[{"text":"[Spawn an Armadillo]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1025"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn an Armadillo","bold":true}],{"text":"\nSummons an Armadillo at your\nlocation.","color":"gray"},{"text":"\nArmadillos spawned from here will\nnot drop mob heads.","color":"red"},[{"text":"\nCost: ","color":"green"},{"text":"15 Reward Credits","bold":true}]]}}]]

tellraw @s {"text":"\nHeads and Decoration:","bold":true,"color":"aqua"}
function pandamium:utils/get/username
data modify storage pandamium:templates macro.username.username set from storage pandamium:temp username
function pandamium:triggers/vote_shop/print_menu/misc_player_heads_line with storage pandamium:templates macro.username
tellraw @s [{"text":" ","color":"green"},[{"text":"[Mini-Block]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set -1008"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"dark_aqua\",\"italic\":false},{\"text\":\"Mini-Block\",\"bold\":true}]',Lore:['{\"text\":\"The mini-block you get\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"corresponds to the item you are\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"holding in your \",\"color\":\"gray\",\"italic\":false},{\"text\":\"main hand\",\"underlined\":true},\".\"]','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"3 Reward Credits\",\"bold\":true}]']},Items:[{id:player_head,Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:\"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWJkN2MwM2EyZWRiNDYyNGNhMjA3ZWVjN2NkYmQ0NTNlYWE4NzI3ZTUzMGMzMTJhYzZlNzdkNjFkMzMwYjRhNyJ9fX0=\"}]},Id:[I;0,0,0,0]}}}]}"}}}],"  |  ",[{"text":"[More Mini-Blocks]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger rewards_shop set 2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to see ","color":"dark_green"},{"text":"More Mini-Blocks","bold":true}]}}]]

tellraw @s [{"text":"\n","color":"green"},"Click ",{"text":"[Here]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger gift"},"hoverEvent":{"action":"show_text","value":[{"text":"/trigger ","color":"gray"},{"text":"gift","color":"aqua"}]}}," to gift one reward credit to another player! "]

tellraw @s {"text":"===============================","color":"aqua"}

scoreboard players set <has_printed_menu> variable 1
