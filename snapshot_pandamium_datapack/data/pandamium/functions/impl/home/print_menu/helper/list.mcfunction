scoreboard players operation <dimension> variable = @s home_1_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_1_x = @s home_1_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 1: ","bold":true},{"score":{"name":"@s","objective":"home_1_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_1_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_1_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_1_x = @s home_1_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 1: ","bold":true},{"text":"Not Set","color":"gray"}]

execute unless score @s gameplay_perms matches 1.. run return 0
scoreboard players operation <dimension> variable = @s home_2_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_2_x = @s home_2_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 2: ","bold":true},{"score":{"name":"@s","objective":"home_2_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_2_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_2_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_2_x = @s home_2_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 2: ","bold":true},{"text":"Not Set","color":"gray"}]

execute unless score @s gameplay_perms matches 2.. run return 0
scoreboard players operation <dimension> variable = @s home_3_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_3_x = @s home_3_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 3: ","bold":true},{"score":{"name":"@s","objective":"home_3_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_3_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_3_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_3_x = @s home_3_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 3: ","bold":true},{"text":"Not Set","color":"gray"}]

execute unless score @s gameplay_perms matches 3.. run return 0
scoreboard players operation <dimension> variable = @s home_4_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_4_x = @s home_4_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 4: ","bold":true},{"score":{"name":"@s","objective":"home_4_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_4_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_4_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_4_x = @s home_4_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 4: ","bold":true},{"text":"Not Set","color":"gray"}]

execute unless score @s gameplay_perms matches 4.. run return 0
scoreboard players operation <dimension> variable = @s home_5_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_5_x = @s home_5_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 5: ","bold":true},{"score":{"name":"@s","objective":"home_5_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_5_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_5_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_5_x = @s home_5_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 5: ","bold":true},{"text":"Not Set","color":"gray"}]

execute unless score @s gameplay_perms matches 5.. run return 0
scoreboard players operation <dimension> variable = @s home_6_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_6_x = @s home_6_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 6: ","bold":true},{"score":{"name":"@s","objective":"home_6_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_6_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_6_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_6_x = @s home_6_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 6: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dimension> variable = @s home_7_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_7_x = @s home_7_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 7: ","bold":true},{"score":{"name":"@s","objective":"home_7_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_7_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_7_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_7_x = @s home_7_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 7: ","bold":true},{"text":"Not Set","color":"gray"}]

execute unless score @s gameplay_perms matches 6.. run return 0
scoreboard players operation <dimension> variable = @s home_8_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_8_x = @s home_8_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 8: ","bold":true},{"score":{"name":"@s","objective":"home_8_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_8_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_8_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_8_x = @s home_8_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 8: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dimension> variable = @s home_9_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_9_x = @s home_9_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 9: ","bold":true},{"score":{"name":"@s","objective":"home_9_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_9_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_9_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_9_x = @s home_9_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 9: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dimension> variable = @s home_10_d
function pandamium:utils/get/dimension_name/from_score
execute if score @s home_10_x = @s home_10_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 10: ","bold":true},{"score":{"name":"@s","objective":"home_10_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_10_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_10_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
execute unless score @s home_10_x = @s home_10_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home 10: ","bold":true},{"text":"Not Set","color":"gray"}]
