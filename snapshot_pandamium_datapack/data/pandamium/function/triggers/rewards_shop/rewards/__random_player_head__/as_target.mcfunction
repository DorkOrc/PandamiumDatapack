# give the head
loot give @a[limit=1,tag=rewards_shop.this] loot pandamium:utility/head
execute as @a[tag=rewards_shop.this,limit=1] at @s run playsound minecraft:entity.sheep.shear master @s
execute if entity @s[tag=rewards_shop.this] run tellraw @s {color:"gray",italic:true,text:"You got your own head!"}
execute unless entity @s[tag=rewards_shop.this] run tellraw @a[limit=1,tag=rewards_shop.this] [{color:"gray",italic:true,text:"You got "},{selector:"@s"},"'s head!"]
scoreboard players operation @a[tag=rewards_shop.this,limit=1] last_player_head_user_id = @s id

# tell the target
tellraw @s[tag=!rewards_shop.this] [{color:"gray",italic:true,text:""},{selector:"@s"}," got your head!"]
execute at @s[tag=!rewards_shop.this] run playsound minecraft:entity.sheep.shear master @s
