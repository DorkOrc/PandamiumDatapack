data modify storage pandamium:temp NBT set from entity @s
data remove storage pandamium:temp mainhand
data modify storage pandamium:temp mainhand set from storage pandamium:temp NBT.SelectedItem

scoreboard players set <has_given_mini_block> variable 0
function pandamium:misc/vote_shop/mini_blocks/give_from_hands

execute if score <has_given_mini_block> variable matches 1 run advancement grant @s only pandamium:pandamium/mini_blocks/buy_mini_block

execute if score <has_given_mini_block> variable matches 1 if data storage pandamium:temp mainhand{id:'minecraft:gold_block'} run advancement grant @s only pandamium:pandamium/mini_blocks/fools_gold
execute if score <has_given_mini_block> variable matches 1 if data storage pandamium:temp mainhand{id:'minecraft:raw_gold_block'} run advancement grant @s only pandamium:pandamium/mini_blocks/fools_gold

execute if score <has_given_mini_block> variable matches 1 at @s run playsound ui.stonecutter.take_result master @s
execute if score <has_given_mini_block> variable matches 0 run scoreboard players set <can_buy> variable 0
