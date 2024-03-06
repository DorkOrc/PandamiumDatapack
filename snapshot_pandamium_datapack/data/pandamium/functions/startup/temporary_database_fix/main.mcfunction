# check done
execute if score <completed_database_fix_05_03_2024> global matches 1 run return 0

# queue
data modify storage pandamium:queue entries append value {action:"database.datafixer",meta:{index:0,max:1,do_bossbar:1b},mail_ids:[]}
data modify storage pandamium:queue entries[-1].mail_ids append from storage pandamium.db:mail entries[{data:{items:[{}]}}].mail_id
execute store result storage pandamium:queue entries[-1].meta.max int 1 if data storage pandamium:queue entries[-1].mail_ids[]

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer started]"}

# mark as done
scoreboard players set <completed_database_fix_05_03_2024> global 1
