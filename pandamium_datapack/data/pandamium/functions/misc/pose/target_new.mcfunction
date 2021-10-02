particle wax_off ~ ~1 ~ 0.2 0.4 0.2 0.2 10

data modify storage pandamium:temp NBT set from entity @s

function pandamium:misc/pose/do_edit

execute store success score <has_edited> variable run data modify storage pandamium:temp NBT set from entity @s
execute if score <has_edited> variable matches 1 unless score <pose> variable matches -66..-65 unless score <pose> variable matches -129 run playsound entity.armor_stand.hit master @p[tag=running_trigger]
execute if score <has_edited> variable matches 1 if score <pose> variable matches -66..-65 run playsound item.armor.equip_generic master @p[tag=running_trigger]
execute if score <has_edited> variable matches 1 if score <pose> variable matches -129 run playsound block.anvil.land master @p[tag=running_trigger]
