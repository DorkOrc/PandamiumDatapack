#{
#	action: "update_rank_up_advancements",
#	username: STRING,
#	rank_credits: INT,
#	step: INT
#}

$execute unless entity $(username) run return 0

execute store result score <rank_credits> variable run data get storage pandamium:queue selected.entry.rank_credits
execute store result score <step> variable run data get storage pandamium:queue selected.entry.step
scoreboard players add <step> variable 1

execute if score <step> variable > <rank_credits> variable run return 0
execute if score <step> variable matches 2501.. run return 0

execute if score <step> variable matches 0..5 run data modify storage pandamium:queue selected.entry.rank set value "player"
execute if score <step> variable matches 6..25 run data modify storage pandamium:queue selected.entry.rank set value "member"
execute if score <step> variable matches 26..125 run data modify storage pandamium:queue selected.entry.rank set value "elder"
execute if score <step> variable matches 126..500 run data modify storage pandamium:queue selected.entry.rank set value "veteran"
execute if score <step> variable matches 501..2500 run data modify storage pandamium:queue selected.entry.rank set value "elite"

scoreboard players operation <sub_step> variable = <step> variable
execute if score <step> variable matches 6..25 run scoreboard players remove <sub_step> variable 5
execute if score <step> variable matches 26..125 run scoreboard players remove <sub_step> variable 25
execute if score <step> variable matches 126..500 run scoreboard players remove <sub_step> variable 125
execute if score <step> variable matches 501..2500 run scoreboard players remove <sub_step> variable 500
execute store result storage pandamium:queue selected.entry.sub_step int 1 run scoreboard players get <sub_step> variable

$execute as $(username) run function pandamium:impl/queue/actions/update_rank_up_advancements/as_player with storage pandamium:queue selected.entry
execute store result storage pandamium:queue selected.entry.step int 1 run scoreboard players get <step> variable

# continue until step exceeds rank_credits
execute store result storage pandamium:queue selected.entry.meta.value int 1 run scoreboard players get <step> variable
execute if score <step> variable <= <rank_credits> variable run return run function pandamium:impl/queue/utils/continue

# end
$tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Finished updating rank-up advancement progress for $(username)]"}
