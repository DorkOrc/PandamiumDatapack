tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},{text:" was automatically jailed for "},{nbt:"reason",storage:"pandamium:auto_actions",bold:true},{text:"!"}]
tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},{text:"'s id is "},{score:{objective:"id",name:"@s"},bold:true},{text:"!"}]
playsound entity.experience_orb.pickup master @a[scores={staff_perms=1..}] ~ ~ ~ 1 2 1

tellraw @s [{text:"",color:"gray"},{text:"[Staff Info]",color:"dark_gray"},{text:" You were automatically jailed for "},{nbt:"reason",storage:"pandamium:auto_actions",bold:true},{text:"!"}]

function pandamium:player/punishment/jail
scoreboard players set @s jailed 2
scoreboard players set @s cheater 1

function pandamium:impl/auto_actions/actions/auto_jail/log
