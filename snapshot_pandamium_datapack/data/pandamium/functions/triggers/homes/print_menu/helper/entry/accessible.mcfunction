$scoreboard players operation <dimension> variable = @s home_$(home)_d
function pandamium:utils/get/dimension_name/from_score

$execute if score @s home_$(home)_x = @s home_$(home)_x unless score @s hide_coordinates matches 1 run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home $(home): ","bold":true},{"score":{"name":"@s","objective":"home_$(home)_x"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_$(home)_y"},"color":"yellow"}," ",{"score":{"name":"@s","objective":"home_$(home)_z"},"color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]
$execute if score @s home_$(home)_x = @s home_$(home)_x if score @s hide_coordinates matches 1 run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home $(home)","bold":true}," (",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"},")"]
$execute unless score @s home_$(home)_x = @s home_$(home)_x run tellraw @a[tag=source,limit=1] [{"text":"","color":"gold"},{"text":"Home $(home): ","bold":true},{"text":"Not Set","color":"gray"}]
