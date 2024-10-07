data modify storage pandamium:queue entries append value {action:"parkour_playback",course:4,teleport_targets:"DorkOrc"}
data modify storage pandamium:queue entries[-1].record set from storage pandamium.db.players:data entries[1].data.parkour.course_4.shortest_time.record
