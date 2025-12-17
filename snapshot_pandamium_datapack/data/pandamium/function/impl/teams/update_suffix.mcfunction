# arguments: id, tablist_sort_index, (...)

$team modify player.sort-$(tablist_sort_index).id-$(id) suffix {text:"",extra:[{text:"",insertion:">>suffix<<"},{storage:"pandamium:local",nbt:'functions."pandamium:impl/teams/*".team_suffix_components[]',interpret:true,separator:" "}]}
# labelled to allow patch for Vanish mod bug                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                                                                                                          ^^
