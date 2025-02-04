execute if score <dragon_fight> global matches 1 run tellraw @s [{"color":"dark_red","text":"[Dragon Fight]"},{"color":"red","text":" The enhanced dragon fight has already started! If this is an error, click this text to forcibly start the fight.","clickEvent":{"action":"run_command","value":"/function pandamium:impl/dragon_fight/start"}}]
execute if score <dragon_fight> global matches 1 run return fail

tellraw @s [{"color":"dark_green","text":"[Dragon Fight]"},{"color":"green","text":" Successfully scheduled an enhanced dragon fight! It will start once an Ender Dragon becomes loaded."}]
function pandamium:impl/dragon_fight/wait
execute if data storage pandamium:global enderman_farm_warp run tellraw @s {"color":"yellow","text":"If the public enderman farm was reset, remove the warp! Run /trigger enderman_farm.config","clickEvent":{"action":"run_command","value":"/trigger enderman_farm.config"}}
