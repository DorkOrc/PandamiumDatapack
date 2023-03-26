data modify storage pandamium:temp nbt set value {billboard:'center'}
data modify storage pandamium:temp nbt.text set from entity @s CustomName
execute if entity @s[type=armor_stand] if data storage pandamium:temp nbt.text at @s positioned ~ ~0.25 ~ summon text_display run data modify entity @s {} merge from storage pandamium:temp nbt
execute if entity @s[type=armor_stand] if data storage pandamium:temp nbt.text run kill
