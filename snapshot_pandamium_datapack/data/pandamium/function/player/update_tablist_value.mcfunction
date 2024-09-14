scoreboard players set @s tablist_value -1

execute if score @s idle.time matches 1..1073741823 unless score @s hidden matches 1.. if score @s pronouns_type matches 1 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray","extra":[" ",{"text":"(he/him)","font":"minecraft:uniform"}]}
execute if score @s idle.time matches 1..1073741823 unless score @s hidden matches 1.. if score @s pronouns_type matches 2 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray","extra":[" ",{"text":"(she/her)","font":"minecraft:uniform"}]}
execute if score @s idle.time matches 1..1073741823 unless score @s hidden matches 1.. if score @s pronouns_type matches 3 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray","extra":[" ",{"text":"(they/them)","font":"minecraft:uniform"}]}
execute if score @s idle.time matches 1..1073741823 unless score @s hidden matches 1.. run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[Idle]","color":"gray"}

execute if score @s idle.time matches 1073741824.. unless score @s hidden matches 1.. if score @s pronouns_type matches 1 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray","extra":[" ",{"text":"(he/him)","font":"minecraft:uniform"}]}
execute if score @s idle.time matches 1073741824.. unless score @s hidden matches 1.. if score @s pronouns_type matches 2 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray","extra":[" ",{"text":"(she/her)","font":"minecraft:uniform"}]}
execute if score @s idle.time matches 1073741824.. unless score @s hidden matches 1.. if score @s pronouns_type matches 3 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray","extra":[" ",{"text":"(they/them)","font":"minecraft:uniform"}]}
execute if score @s idle.time matches 1073741824.. unless score @s hidden matches 1.. run return run scoreboard players display numberformat @s tablist_value fixed {"text":"[AFK]","color":"gray"}

execute if score @s pronouns_type matches 1 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"(he/him)","color":"gray","font":"minecraft:uniform"}
execute if score @s pronouns_type matches 2 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"(she/her)","color":"gray","font":"minecraft:uniform"}
execute if score @s pronouns_type matches 3 run return run scoreboard players display numberformat @s tablist_value fixed {"text":"(they/them)","color":"gray","font":"minecraft:uniform"}
scoreboard players display numberformat @s tablist_value blank
