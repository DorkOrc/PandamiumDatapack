execute if score <dragon_fight> global matches 1 run tellraw @s [{"text":"[Dragon Fight]","color":"dark_red"},{"text":" Dragon Fight already started! If this is an error, click this text to forcibly start the fight.","color":"red","clickEvent":{"action":"run_command","value":"/function pandamium:impl/dragon_fight/start"}}]
execute unless score <dragon_fight> global matches 1 run function pandamium:impl/dragon_fight/start
