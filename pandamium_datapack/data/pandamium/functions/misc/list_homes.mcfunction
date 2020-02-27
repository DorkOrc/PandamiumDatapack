tellraw @s [{"text":"========== ","color":"yellow"},{"selector":"@p"},{"text":"'s homes","color":"green"},{"text":" ==========","color":"yellow"}]

execute if score @p home_1_y matches 0.. run tellraw @s [{"text":"Home 1: ","color":"green"},{"score":{"name":"@p","objective":"home_1_x"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_1_y"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_1_z"},"color":"dark_green"}]

execute if score @p home_2_y matches 0.. run tellraw @s [{"text":"Home 2: ","color":"green"},{"score":{"name":"@p","objective":"home_2_x"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_2_y"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_2_z"},"color":"dark_green"}]

execute if score @p home_3_y matches 0.. run tellraw @s [{"text":"Home 3: ","color":"green"},{"score":{"name":"@p","objective":"home_3_x"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_3_y"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_3_z"},"color":"dark_green"}]

execute if score @p home_4_y matches 0.. run tellraw @s [{"text":"Home 4: ","color":"green"},{"score":{"name":"@p","objective":"home_4_x"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_4_y"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_4_z"},"color":"dark_green"}]

execute if score @p home_5_y matches 0.. run tellraw @s [{"text":"Home 5: ","color":"green"},{"score":{"name":"@p","objective":"home_5_x"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_5_y"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@p","objective":"home_5_z"},"color":"dark_green"}]

tellraw @s {"text":"===========================================","color":"yellow"}
