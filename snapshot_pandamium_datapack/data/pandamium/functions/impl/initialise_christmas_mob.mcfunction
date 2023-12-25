scoreboard players add <i> variable 1
execute at @s run spreadplayers ~ ~ 0 32 false @s
execute at @s positioned over motion_blocking_no_leaves unless block ~ ~ ~ water unless block ~ ~ ~ lava if block ~ ~ ~ #pandamium:no_solid_collision if block ~ ~1 ~ #pandamium:no_solid_collision run tp @s ~ ~ ~
execute at @s unless score <i> variable matches 0..3 unless predicate pandamium:no_light run return run function pandamium:impl/initialise_christmas_mob
execute at @s unless score <i> variable matches 0..3 if entity @a[distance=..10,limit=1] run return run function pandamium:impl/initialise_christmas_mob

tag @s add christmas_mob

attribute @s minecraft:generic.scale base set 0.75
attribute @s minecraft:generic.attack_damage base set 0.25
attribute @s minecraft:generic.max_health base set 30
data modify entity @s Health set value 30.0f

data modify entity @s ArmorDropChances[3] set value 0.0f
data modify entity @s CanPickUpLoot set value 0b
data modify entity @s DeathLootTable set value "pandamium:christmas_mob"

item replace entity @s[type=zombie] armor.head with player_head{SkullOwner: {Name: "§lChristmas Zombie§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQwOTMxODQ3MjBkODI5ODgyZDQxZDY1ZjAzZjE3NWU5MGM4NGQxNWRiZmEyMzRjZTI0MzM4YmZmMTYwZDkwOCJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}
item replace entity @s[type=husk] armor.head with player_head{SkullOwner: {Name: "§lChristmas Husk§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjQ2NDQ1ZTM4OWZmODUyNGZiYmEzZTUwZWIzZmJlYTlhYTY1YTY4YWUyYWRjNmNjMTVhOTVlMGZlODBjZDU1OCJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}
item replace entity @s[type=drowned] armor.head with player_head{SkullOwner: {Name: "§lChristmas Drowned§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzcwYmMyNmQxZWQ2NjNkZGFkYmFjYmQwNzhlMjg2YmFiOGViNDdhNDE1N2YwYmUyYWI0NjA0ZTIzNjAxZjBiZCJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}

item replace entity @s[type=skeleton] armor.head with player_head{SkullOwner: {Name: "§lChristmas Skeleton§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjg0NzAwMTZhMDAzZDQ3ODIxMDc1MGNmMTQwYWUzM2FiNzgxN2EyYWM1YmYxMjY5N2ExNWQ3YTZjMzZjZTYzMiJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}
item replace entity @s[type=stray] armor.head with player_head{SkullOwner: {Name: "§lChristmas Stray§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdjNDRhN2ZhN2MzYmFiYjI3NzZjY2MwMDU3ZGM4NzdjYzkwMmQ5MzYxODNmMDQ5YzBjMmJjYmFjNjFmMzcxYyJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}
item replace entity @s[type=wither_skeleton] armor.head with player_head{SkullOwner: {Name: "§lChristmas Wither Skeleton§0§r", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjZiOTM0OWU0ZDhjZWU1ZDEwZTNmZDdjMzg4NTNlYzlkOTQyYzM0MTdkMGI4NDU3NGY3ZTc5YmE3NjVjMjgwMiJ9fX0="}]}, Id: [I; -1066432250, 1284131089, -1674974691, -1122325630]}}

loot replace entity @s weapon.mainhand loot pandamium:random_tool

tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Server: Summoned Christmas Mob near chunk ","color":"gray","italic":true},{"storage":"pandamium.db:regions","nbt":"selected.chunk.entry.chunk[]","separator":" "},"]"]

return 1
