# arguments: username

$summon area_effect_cloud ~ ~ ~ {Radius:0,custom_particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}},CustomName:[{color:"red",text:"☠ "},{bold:true,text:"$(username)"}," ☠"],CustomNameVisible:1b,WaitTime:12000,Tags:["parkour.death_point","spawn_protected"]}
execute store result score <nearby_death_points> variable if entity @e[type=area_effect_cloud,tag=parkour.death_point,distance=..10]
execute if score <nearby_death_points> variable matches 21.. run kill @e[type=area_effect_cloud,tag=parkour.death_point,distance=..10,sort=random,limit=1]
