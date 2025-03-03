# data merge entity @s {line_width:400,alignment:"center",background:3204448319L,brightness:{block:10,sky:10}}


data modify storage pandamium.leader_boards:data leader_boards merge value \
{\
	total_votes: {\
		display: {\
			name: "Total Votes",\
			name_in_context: "Votes"\
		},\
		value_getter: {\
			source_function: "score",\
			source_data: {\
				objective: "votes"\
			},\
			fallback_function: "value",\
			fallback_data: {\
				value: 0\
			},\
			sorting_function: "none",\
			display_function: "value"\
		}\
	},\
	\
	total_playtime: {\
		display: {\
			name: "Total Playtime",\
			name_in_context: "Playtime"\
		},\
		value_getter: {\
			source_function: "score",\
			source_data: {\
				objective: "playtime_ticks"\
			},\
			fallback_function: "value",\
			fallback_data: {\
				value: 0\
			},\
			sorting_function: "none",\
			display_function: "time"\
		}\
	},\
	\
	monthly_votes: {\
		display: {\
			name: "Monthly Votes",\
			name_in_context: "Votes",\
			hologram_color: 3204448319L,\
			hologram_location: {\
				dimension: "minecraft:overworld",\
				x: -272.75f,\
				y: 142.0f,\
				z: 117.75f,\
				yaw: -90f,\
				pitch: 0f\
			},\
			hologram_scale: 1f\
		},\
		value_getter: {\
			source_function: "score",\
			source_data: {\
				objective: "monthly_votes"\
			},\
			fallback_function: "none",\
			fallback_data: {},\
			sorting_function: "none",\
			display_function: "value"\
		}\
	},\
	\
	monthly_playtime: {\
		display: {\
			name: "Monthly Playtime",\
			name_in_context: "Playtime",\
			hologram_color: 3204448319L,\
			hologram_location: {\
				dimension: "minecraft:overworld",\
				x: -272.75f,\
				y: 142.0f,\
				z: 123.25f,\
				yaw: -90f,\
				pitch: 0f\
			},\
			hologram_scale: 1f\
		},\
		value_getter: {\
			source_function: "score",\
			source_data: {\
				objective: "monthly_playtime_ticks"\
			},\
			fallback_function: "none",\
			fallback_data: {},\
			sorting_function: "none",\
			display_function: "time"\
		}\
	},\
	\
	yearly_votes: {\
		display: {\
			name: "Yearly Votes",\
			name_in_context: "Votes",\
			hologram_color: 3213099180L,\
			hologram_location: {\
				dimension: "minecraft:overworld",\
				x: -272.25f,\
				y: 146.5f,\
				z: 117.75f,\
				yaw: -90f,\
				pitch: 10f\
			},\
			hologram_scale: 1f\
		},\
		value_getter: {\
			source_function: "score",\
			source_data: {\
				objective: "yearly_votes"\
			},\
			fallback_function: "none",\
			fallback_data: {},\
			sorting_function: "none",\
			display_function: "value"\
		}\
	},\
	\
	yearly_playtime: {\
		display: {\
			name: "Yearly Playtime",\
			name_in_context: "Playtime",\
			hologram_color: 3213099180L,\
			hologram_location: {\
				dimension: "minecraft:overworld",\
				x: -272.25f,\
				y: 146.5f,\
				z: 123.25f,\
				yaw: -90f,\
				pitch: 10f\
			},\
			hologram_scale: 1f\
		},\
		value_getter: {\
			source_function: "score",\
			source_data: {\
				objective: "yearly_playtime_ticks"\
			},\
			fallback_function: "none",\
			fallback_data: {},\
			sorting_function: "none",\
			display_function: "time"\
		}\
	},\
	\
	parkour_3: {\
		display: {\
			name: "Forgotten Caverns Parkour",\
			name_in_context: "Forgotten Caverns",\
			hologram_color: 3207540527L,\
			hologram_location: {\
				dimension: "minecraft:overworld",\
				x: -296.86f,\
				y: 131.28f,\
				z: 157.32f,\
				yaw: -50f,\
				pitch: 5f\
			},\
			hologram_scale: 0.85f\
		},\
		value_getter: {\
			source_function: "score",\
			source_data: {\
				objective: "parkour_3.best_time_real",\
			},\
			fallback_function: "score",\
			fallback_data: {\
				objective: "parkour_3.best_time"\
			},\
			sorting_function: "reverse",\
			display_function: "parkour_time"\
		}\
	},\
	\
	parkour_4: {\
		display: {\
			name: "Jack-o-Giggle Parkour Course",\
			name_in_context: "Jack-o-Giggle"\
		},\
		value_getter: {\
			source_function: "database",\
			source_data: {\
				path: "data.parkour.course_4.shortest_time.time",\
				scale: 1\
			},\
			fallback_function: "none",\
			fallback_data: {},\
			sorting_function: "reverse",\
			display_function: "parkour_time"\
		}\
	}\
}
