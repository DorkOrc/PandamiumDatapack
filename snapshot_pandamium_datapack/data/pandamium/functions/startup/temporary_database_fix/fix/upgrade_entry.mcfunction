# arguments: index

$data modify storage pandamium:temp homes_before set from storage pandamium.db:players entries[$(index)].data.homes

$data remove storage pandamium.db:players entries[$(index)].data.homes.1.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.2.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.3.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.4.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.5.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.6.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.7.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.8.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.9.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.10.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.11.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.12.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.13.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.14.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.15.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.16.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.17.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.18.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.19.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.20.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.21.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.22.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.23.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.24.plain_name
$data remove storage pandamium.db:players entries[$(index)].data.homes.25.plain_name

$execute if data storage pandamium.db:players entries[$(index)].data.homes.1.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:1}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.2.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:2}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.3.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:3}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.4.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:4}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.5.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:5}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.6.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:6}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.7.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:7}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.8.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:8}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.9.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:9}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.10.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:10}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.11.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:11}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.12.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:12}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.13.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:13}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.14.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:14}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.15.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:15}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.16.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:16}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.17.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:17}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.18.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:18}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.19.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:19}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.20.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:20}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.21.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:21}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.22.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:22}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.23.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:23}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.24.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:24}
$execute if data storage pandamium.db:players entries[$(index)].data.homes.25.name run function pandamium:startup/temporary_database_fix/fix/upgrade_home {index:$(index),home:25}
