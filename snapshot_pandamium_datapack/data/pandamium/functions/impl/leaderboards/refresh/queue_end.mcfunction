$data modify storage pandamium:queue entries append value {action:"leaderboards.refresh.end",wait:$(index)}
data modify storage pandamium:queue entries[-1].type set from storage pandamium:temp type
