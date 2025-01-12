# run AS item entity

data modify storage pandamium:local functions."pandamium:impl/jail_items/*".lore set value [\
    {text:"Unknown Thrower",color:"gray",italic:false},\
    {score:{name:"<day>",objective:"global"},color:"gray",italic:false,extra:[{text:"/"},{score:{name:"<month>",objective:"global"}},{text:"/"},{score:{name:"<year>",objective:"global"}},{text:" at "},{score:{name:"<precise_hour>",objective:"global"}},{text:":"},{score:{name:"<precise_minute>",objective:"global"}},{text:" GMT"}]}\
]

scoreboard players set <player_exists> variable 0
execute on origin if entity @s[type=player,scores={jailed=1..}] run function pandamium:impl/jail_items/as_thrower

execute if score <player_exists> variable matches 0 run tag @s add jail_items.ignore
execute if score <player_exists> variable matches 1 in pandamium:staff_world run function pandamium:impl/jail_items/do_transfer
