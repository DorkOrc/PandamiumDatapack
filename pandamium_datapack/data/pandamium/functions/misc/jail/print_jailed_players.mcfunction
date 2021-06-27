tag @s add printing_menu

scoreboard players add @a[scores={jailed=1..}] cheater 0
tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Jailed Players","bold":true}," ========\n",{"text":"Player List:","bold":true}]
execute as @a[scores={jailed=1..,cheater=0}] run tellraw @p[tag=printing_menu] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[scores={jailed=1..,cheater=1..}] run tellraw @p[tag=printing_menu] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true},{"text":" (Automatically Jailed)","bold":true,"color":"gray"}]
tellraw @s {"text":"==================", "color":"yellow"}

tag @s remove printing_menu
