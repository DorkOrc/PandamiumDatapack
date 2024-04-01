execute in the_end positioned 0 60 0 at @e[team=dragon_fight,type=!end_crystal,type=!ender_dragon,limit=30,sort=nearest] positioned over world_surface summon breeze run data merge entity @s {PersistenceRequired:1b,Attributes:[{Base:50d,Name:"minecraft:generic.max_health"}],Health:50f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight","unnatural"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
effect give @e[type=breeze,team=dragon_fight] fire_resistance 1000000 0 true
scoreboard players set <dragon_fight_spawned_reinforcements> global 1
