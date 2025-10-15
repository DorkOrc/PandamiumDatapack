# close menu
execute if score @s rewards_shop matches 1000001 run return run dialog clear @s

# main menu
execute if score @s rewards_shop matches 1..99 run return run function pandamium:triggers/rewards_shop/show_main_menu

# submenus
execute if score @s rewards_shop matches 201 run data modify storage pandamium:rewards_shop dialogs.all.dialog.body[{__own_player_head__:true}].item.components.minecraft:profile.name set from storage pandamium:temp username
execute if score @s rewards_shop matches 201 run return run function pandamium:utils/show_dialog with storage pandamium:rewards_shop dialogs.all

execute if score @s rewards_shop matches 101 run data modify storage pandamium:rewards_shop dialogs.misc.dialog.body[{__own_player_head__:true}].item.components.minecraft:profile.name set from storage pandamium:temp username
execute if score @s rewards_shop matches 101 run return run function pandamium:utils/show_dialog with storage pandamium:rewards_shop dialogs.misc

execute if score @s rewards_shop matches 102 run return run function pandamium:utils/show_dialog with storage pandamium:rewards_shop dialogs.chase_the_skies
execute if score @s rewards_shop matches 103 run return run function pandamium:utils/show_dialog with storage pandamium:rewards_shop dialogs.the_copper_age

# rewards
scoreboard players set <success> variable 0
execute if score @s rewards_shop matches ..-1 store success score <success> variable run function pandamium:triggers/rewards_shop/buy/main
execute if score @s rewards_shop matches ..-1 if score <success> variable matches 1 run scoreboard players operation @s reward_credits -= <cost> variable
execute if score @s rewards_shop matches ..-1 if score <success> variable matches 1 run tellraw @s [{color:"dark_green",text:"[Rewards Shop] "},[{color:"green",text:"Successfully bought "},{color:"aqua",text:"",extra:[{storage:"pandamium:local",nbt:'functions."pandamium:trggiers/rewards_shop/buy/*".name',interpret:true}]},"! ",{color:"red",text:"(-",extra:[{score:{name:"<cost>",objective:"variable"}},")"]},"\nYou now have ",{bold:true,score:{name:"@s",objective:"reward_credits"}}," reward credits left."]]
execute if score @s rewards_shop matches ..-1 run dialog clear @s
