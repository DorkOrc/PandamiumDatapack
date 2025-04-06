execute if score @s jailed matches 1.. run return run function pandamium:utils/log {args:{message:["Tried to jail ",{selector:"@s"}," but they were already jailed."]}}

function pandamium:utils/get/username
function pandamium:utils/log {args:{message:\
    [\
        'event="jail",data={"username":"'\
        {\
            storage: "pandamium:temp",\
            nbt: "username"\
        },\
        '"}'\
    ]\
}}

scoreboard players set @s jailed 1

scoreboard players operation @s pre_jail_pos_x = @s last_position.x
scoreboard players operation @s pre_jail_pos_y = @s last_position.y
scoreboard players operation @s pre_jail_pos_z = @s last_position.z
scoreboard players operation @s pre_jail_pos_d = @s last_position.d

execute store result score @s last_jailed.datetime run function pandamium:utils/datetime/get_current_datetime_id

execute if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/generic

function pandamium:player/update_tablist_value
