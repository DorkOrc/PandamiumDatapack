#data modify storage pandamium:queue entries append value {action:"reset_dynamic_triggers.per_trigger",target:"_",triggers:[]}

#function pandamium:utils/get/username
#data modify storage pandamium:queue entries[-1].target set from storage pandamium:temp username

#function pandamium:impl/queue/actions/reset_dynamic_triggers.per_trigger/init_self_with_username with storage pandamium:queue entries[-1]
