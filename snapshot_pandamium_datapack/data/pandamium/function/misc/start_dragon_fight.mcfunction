execute if score <dragon_fight> global matches 1 run return run tellraw @s [{text:"[Dragon Fight]",color:"dark_red"},{text:" Dragon Fight already started! If this is an error, click this text to forcibly start the fight.",color:"red",click_event:{action:"run_command",command:"function pandamium:impl/dragon_fight/start"}}]

function pandamium:impl/dragon_fight/start
execute if data storage pandamium:global enderman_farm_warp run tellraw @s {text:"You might want to remove the enderman farm warp! Run /trigger enderman_farm.config",color:"yellow"}
