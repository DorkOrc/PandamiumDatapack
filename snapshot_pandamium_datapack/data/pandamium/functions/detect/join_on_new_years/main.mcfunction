function pandamium:utils/get/username
tellraw @s [{"text":"[Pandamium]","color":"blue"},[{"text":" Thank you, ","color":"green"},{"storage":"pandamium:temp","nbt":"username"},", for playing on our server! The Pandamium team wishes you a ",{"text":"Happy New Year ❤","color":"aqua"},"!"]]
scoreboard players add @s reward_credits 20

execute unless predicate pandamium:wearing_anything_on_head run return run loot replace entity @s armor.head loot pandamium:items/heads/presents/new_year
loot give @s loot pandamium:items/heads/presents/new_year
