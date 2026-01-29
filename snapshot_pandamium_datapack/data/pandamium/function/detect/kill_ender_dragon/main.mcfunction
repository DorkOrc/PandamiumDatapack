execute if score <dragon_fight> global matches 1 run function pandamium:utils/get/username
execute if score <dragon_fight> global matches 1 run function pandamium:utils/log {args:{message:\
    [\
        {\
            text: 'event="dragon_fight.player_killed_ender_dragon",data={"username":"'\
        },\
        {\
            storage: "pandamium:temp",\
            nbt: "username",\
            interpret: true\
        },\
        {\
            text: '"}'\
        }\
    ]\
}}
execute if score <dragon_fight> global matches 1 run tellraw @a [{"color":"dark_purple","text":""},{"selector":"@s"}," struck the killing blow!"]
execute if score <dragon_fight> global matches 1 run function pandamium:impl/dragon_fight/end

advancement revoke @s only pandamium:detect/kill_ender_dragon
