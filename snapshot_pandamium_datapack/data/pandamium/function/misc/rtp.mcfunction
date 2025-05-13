data modify storage pandamium:queue entries append value {action:"rtp",meta:{do_bossbar:1b},wait:1}
execute store result storage pandamium:queue entries[-1].user_id int 1 store result storage pandamium:queue entries[-1].meta.players int 1 run scoreboard players get @s id

scoreboard players set @s rtp_cooldown 200
