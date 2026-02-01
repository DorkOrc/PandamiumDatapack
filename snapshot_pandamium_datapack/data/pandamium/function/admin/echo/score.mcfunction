# arguments: name, objective

data modify storage pandamium:temp results set value []
$execute as $(name) run function pandamium:impl/echo/score/entity {objective:"$(objective)"}
scoreboard players reset <result> variable

execute if data storage pandamium:temp results[0] store result score <total> variable if data storage pandamium:temp results[]
execute if data storage pandamium:temp results[0] if score <total> variable matches 1 run tellraw @s ["Result from 1 entity:",{color:"dark_gray",text:"\n• "},{storage:"pandamium:temp",nbt:"results[0]",interpret:true}]
execute if data storage pandamium:temp results[0] if score <total> variable matches 2.. run tellraw @s ["Results from ",{score:{name:"<total>",objective:"variable"}}," entities:",{color:"dark_gray",text:"\n• "},{storage:"pandamium:temp",nbt:"results[]",interpret:true,separator:{color:"dark_gray",text:"\n• "}}]

execute unless data storage pandamium:temp results[0] run tellraw @s {score:{name:'$(name)',objective:"$(objective)"}}

data remove storage pandamium:temp results
