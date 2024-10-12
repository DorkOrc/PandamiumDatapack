scoreboard players set @s tablist_value -1

execute if score @s[predicate=pandamium:player/is_jailed] pronouns_type matches 1 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Jailed]","color":"red","extra":[" ",{"text":"(he/him)","font":"minecraft:uniform","color":"gray"}]}
execute if score @s[predicate=pandamium:player/is_jailed] pronouns_type matches 2 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Jailed]","color":"red","extra":[" ",{"text":"(she/her)","font":"minecraft:uniform","color":"gray"}]}
execute if score @s[predicate=pandamium:player/is_jailed] pronouns_type matches 3 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Jailed]","color":"red","extra":[" ",{"text":"(they/them)","font":"minecraft:uniform","color":"gray"}]}
execute if predicate pandamium:player/is_jailed run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Jailed]","color":"red"}

execute if score @s[scores={idle.time=1..1073741823},predicate=!pandamium:player/is_hidden] pronouns_type matches 1 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray","extra":[" ",{"text":"(he/him)","font":"minecraft:uniform"}]}
execute if score @s[scores={idle.time=1..1073741823},predicate=!pandamium:player/is_hidden] pronouns_type matches 2 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray","extra":[" ",{"text":"(she/her)","font":"minecraft:uniform"}]}
execute if score @s[scores={idle.time=1..1073741823},predicate=!pandamium:player/is_hidden] pronouns_type matches 3 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray","extra":[" ",{"text":"(they/them)","font":"minecraft:uniform"}]}
execute if entity @s[scores={idle.time=1..1073741823},predicate=!pandamium:player/is_hidden] run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray"}

execute if score @s[scores={idle.time=1073741824..},predicate=!pandamium:player/is_hidden] pronouns_type matches 1 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray","extra":[" ",{"text":"(he/him)","font":"minecraft:uniform"}]}
execute if score @s[scores={idle.time=1073741824..},predicate=!pandamium:player/is_hidden] pronouns_type matches 2 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray","extra":[" ",{"text":"(she/her)","font":"minecraft:uniform"}]}
execute if score @s[scores={idle.time=1073741824..},predicate=!pandamium:player/is_hidden] pronouns_type matches 3 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray","extra":[" ",{"text":"(they/them)","font":"minecraft:uniform"}]}
execute if entity @s[scores={idle.time=1073741824..},predicate=!pandamium:player/is_hidden] run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray"}

execute if score @s pronouns_type matches 1 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"(he/him)","color":"gray","font":"minecraft:uniform"}
execute if score @s pronouns_type matches 2 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"(she/her)","color":"gray","font":"minecraft:uniform"}
execute if score @s pronouns_type matches 3 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"(they/them)","color":"gray","font":"minecraft:uniform"}
scoreboard players display numberformat @s tablist_value blank
