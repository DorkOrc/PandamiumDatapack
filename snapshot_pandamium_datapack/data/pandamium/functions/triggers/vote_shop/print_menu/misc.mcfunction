tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Vote Shop","bold":true}," ========\n",[{"text":"Your Reward Credits: ","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"aqua"},{"text":"Vote for Pandamium","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger vote"}},{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}]]

tellraw @s {"text":"Misc:","bold":true,"color":"aqua"}
tellraw @s [{"text":" ","color":"green"},[{"text":"[Diamond]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1001"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Diamond\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"3 Reward Credits\",\"bold\":true}]']},Items:[{id:diamond,Count:1b}]}"}}}],"  |  ",[[{"text":"[5 Bottles o' Enchanting]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1002"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"5 Bottles o\\' Enchanting\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"1 Reward Credit\",\"bold\":true}]']},Items:[{id:experience_bottle,Count:5b}]}"}}}]],"  |  ",[{"text":"[Golden Apple]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1003"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Golden Apple\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"1 Reward Credit\",\"bold\":true}]']},Items:[{id:golden_apple,Count:1b}]}"}}}]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Endermite Spawn Egg]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1004"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Endermite Spawn Egg\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"1 Reward Credit\",\"bold\":true}]']},Items:[{id:endermite_spawn_egg,Count:1b}]}"}}}],"  |  ",[{"text":"[Swift Sneak III Enchanted Book]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1016"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Swift Sneak III\",\"bold\":true},\" enchanted book\"]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"30 Reward Credits\",\"bold\":true}]']},Items:[{id:enchanted_book,Count:1b}]}"}}}]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Mending Enchanted Book]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1005"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Mending\",\"bold\":true},\" enchanted book\"]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"10 Reward Credits\",\"bold\":true}]']},Items:[{id:enchanted_book,Count:1b}]}"}}}],"  |  ",[[{"text":"[Enchanted Golden Apple]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1006"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Enchanted Golden Apple\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"50 Reward Credits\",\"bold\":true}]']},Items:[{id:enchanted_golden_apple,Count:1b}]}"}}}]]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Potion of Luck]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1007"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Potion of Luck\",\"bold\":true}]',Lore:['{\"text\":\"Increases your chances of\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"getting higher quality loot\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"while fishing and looting\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"naturally generated chests for 5\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"minutes.\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"8 Reward Credits\",\"bold\":true}]']},Items:[{id:potion,Count:1b,tag:{Potion:luck}}]}"}}}],"  |  ",[{"text":"[Knockback Stick]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1017"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"aqua\",\"italic\":false},{\"text\":\"Knockback Stick\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"10 Reward Credits\",\"bold\":true}]']},Items:[{id:stick,Count:1b,tag:{Enchantments:[{}]}}]}"}}}]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Spawn a Shulker]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1011"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn a Shulker","bold":true}],{"text":"\nSummons a Shulker at your\nlocation.","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"10 Reward Credits","bold":true}]]}}],"  |  ",[[{"text":"[Spawn a Zombie Horse]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1014"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn a Zombie Horse","bold":true}],{"text":"\nSummons a Zombie Horse at your\nlocation. The Zombie Horse will\nautomatically be tamed and\nrideable.","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"20 Reward Credits","bold":true}]]}}]]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Caves & Cliffs Loot Bundle]","color":"#7B00EC","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1012"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"#7B00EC\",\"italic\":false},{\"text\":\"Caves & Cliffs Loot Bundle\",\"bold\":true}]',Lore:['{\"text\":\"An assortment of random items\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"relating to the Caves and Cliffs\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"update, and a 1/3 chance of\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"getting a Sculk Sensor!\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"25 Reward Credits\",\"bold\":true}]']},Items:[{id:bundle,Count:1b,tag:{Enchantments:[{}],Items:[{id:dirt,Count:60b}]}}]}"}}}],"  |  ",[[{"text":"[Wild Loot Bundle]","color":"#7B00EC","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1015"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"#7B00EC\",\"italic\":false},{\"text\":\"Wild Loot Bundle\",\"bold\":true}]',Lore:['{\"text\":\"An assortment of random items\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"relating to the Wild Update!\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"25 Reward Credits\",\"bold\":true}]']},Items:[{id:bundle,Count:1b,tag:{Enchantments:[{}],Items:[{id:dirt,Count:60b}]}}]}"}}}]]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Break 1 Bedrock Block]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1013"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"dark_blue"},{"text":"Break 1 Bedrock Block","bold":true}],{"text":"\nBreaks the bedrock block that\nyou are looking at (as long as\nit is not at the bottom of the\nworld).","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"1 Reward Credit","bold":true}]]}}]]

tellraw @s {"text":"\nTrails & Tales:","bold":true,"color":"aqua"}
tellraw @s [{"text":"","color":"green"}," ",[{"text":"[Spawn a Camel]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1018"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn a Camel","bold":true}],{"text":"\nSummons a Camel at your\nlocation.","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"20 Reward Credits","bold":true}]]}}],"  |  ",[{"text":"[Spawn a Sniffer]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1019"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"blue"},{"text":"Spawn a Sniffer","bold":true}],{"text":"\nSummons a Sniffer at your\nlocation.","color":"gray"},[{"text":"\nCost: ","color":"green"},{"text":"25 Reward Credits","bold":true}]]}}],"\n ",[{"text":"[Cherry Sapling]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1020"},"hoverEvent":{"action":"show_text","value":[[{"text":"Click to buy ","color":"aqua"},{"text":"Cherry Sapling","bold":true}],[{"text":"\nCost: ","color":"green"},{"text":"1 Reward Credit","bold":true}]]}}],"  |  ",[[{"text":"[Trails & Tales Loot Bundle]","color":"#7B00EC","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1021"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"#7B00EC\",\"italic\":false},{\"text\":\"Trails & Tales Loot Bundle\",\"bold\":true}]',Lore:['{\"text\":\"An assortment of random items\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"relating to the Trails & Tales\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"Update!\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"30 Reward Credits\",\"bold\":true}]']},Items:[{id:bundle,Count:1b,tag:{Enchantments:[{}],Items:[{id:dirt,Count:60b}]}}]}"}}}]]," ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":{"text":"Click here to find out more\nabout what the bundle contains!","color":"gray"}},"clickEvent":{"action":"open_url","value":"https://www.pandamium.com/article/trails-and-tales-loot-bundle"}}]

tellraw @s {"text":"\nHeads and Decoration:","bold":true,"color":"aqua"}
tellraw @s [{"text":" ","color":"green"},[{"text":"[A Random Online Player's Head]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1009"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"gold\",\"italic\":false},{\"text\":\"A Random Online Player\\'s Head\",\"bold\":true}]',Lore:['{\"text\":\"Requires At Least 10 Online Players\",\"color\":\"red\",\"italic\":false}','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"20 Reward Credits\",\"bold\":true}]']},Items:[{id:player_head,Count:1b,tag:{SkullOwner:MHF_Question}}]}"}}}],"  |  ",[[{"text":"[Your Head]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1010"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"gold\",\"italic\":false},{\"text\":\"Your Head\",\"bold\":true}]',Lore:['[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"100 Reward Credits\",\"bold\":true}]']},Items:[{id:player_head,Count:1b,tag:{SkullOwner:MHF_Exclamation}}]}"}}}]]]
tellraw @s [{"text":" ","color":"green"},[{"text":"[Mini-Block]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1008"},"hoverEvent":{"action":"show_item","contents":{"id":"bundle","tag":"{display:{Name:'[{\"text\":\"Click to buy \",\"color\":\"dark_aqua\",\"italic\":false},{\"text\":\"Mini-Block\",\"bold\":true}]',Lore:['{\"text\":\"The mini-block you get\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"corresponds to the item you are\",\"color\":\"gray\",\"italic\":false}','[{\"text\":\"holding in your \",\"color\":\"gray\",\"italic\":false},{\"text\":\"main hand\",\"underlined\":true},\".\"]','[{\"text\":\"Cost: \",\"color\":\"green\",\"italic\":false},{\"text\":\"3 Reward Credits\",\"bold\":true}]']},Items:[{id:player_head,Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:\"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWJkN2MwM2EyZWRiNDYyNGNhMjA3ZWVjN2NkYmQ0NTNlYWE4NzI3ZTUzMGMzMTJhYzZlNzdkNjFkMzMwYjRhNyJ9fX0=\"}]},Id:[I;0,0,0,0]}}}]}"}}}],"  |  ",[{"text":"[More Mini-Blocks]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set 2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to see ","color":"dark_green"},{"text":"More Mini-Blocks","bold":true}]}}]]

tellraw @s [{"text":"\n","color":"green"},"Click ",{"text":"[Here]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger gift"},"hoverEvent":{"action":"show_text","value":[{"text":"/trigger ","color":"gray"},{"text":"gift","color":"aqua"}]}}," to gift one reward credit to another player! "]

tellraw @s {"text":"============================","color":"aqua"}

scoreboard players set <has_printed_menu> variable 1
