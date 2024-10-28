summon phantom ~ ~ ~ {\
	Tags: ["pandamium.flying_eyeball"],\
	CustomName: '"Flying Eyeball"',\
	active_effects: [{id:"minecraft:invisibility",duration:-1,show_particles:false}],\
	attributes: [{id:"minecraft:scale",base:0.8d},{id:"minecraft:max_health",base:12d}],\
	Health: 12f,\
	DeathLootTable: "pandamium:entities/flying_eyeball",\
	Passengers: [\
		{\
			id: "minecraft:item_display",\
			Tags: ["pandamium.flying_eyeball","pandamium.flying_eyeball.root","pandamium.ticking"],\
			item: {\
				id: "minecraft:player_head",\
				components: {"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdkYjE5MjNkMDNjNGVmNGU5ZjZlODcyYzVhNmFkMjU3OGIxYWZmMmIyODFmYmMzZmZhNzQ2NmM4MjVmYjkifX19"}],id:[I;1746821740,-253539768,-1502244563,-1681301798]}}\
			},\
			teleport_duration: 3,\
			item_display: "fixed",\
			transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.3f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f]},\
			Passengers:[\
				{\
					id: "minecraft:block_display",\
					Tags: ["pandamium.flying_eyeball"],\
					block_state: {\
						Name: "minecraft:crimson_roots"\
					},\
					teleport_duration: 20,\
					transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, -0.7071068f], translation: [-0.375f, -0.375f, 0.1f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.75f, 1.35f, 0.75f]}\
				}\
			]\
		}\
	]\
}
