tellraw @a[predicate=pandamium:matches_id,limit=1] [{text:"",color:"gray"},{text:"[TPA]",color:"dark_gray"},{text:" Your TPA request to "},{selector:"@s",color:"gray"},{text:" has expired!"}]
tellraw @s [{text:"",color:"gray"},{text:"[TPA] ",color:"dark_gray"},{selector:"@a[predicate=pandamium:matches_id,limit=1]",color:"gray"},{text:"'s TPA request to you has expired!"}]

scoreboard players reset @s tpa_request.sender_id
scoreboard players reset @s tpa_request.time
