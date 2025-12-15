data modify storage pandamium:local functions."pandamium:triggers/vote/*".dialog set value {\
	"type": "minecraft:multi_action",\
	"title": "Voting",\
	"body": [\
		{\
			"type": "minecraft:plain_message",\
			"contents": [\
                "Use these websites to support Pandamium by helping us reach more players!",\
                "\n\nEach vote will grant you 1 reward credit, which you can spend at the Rewards Shop! During the first week of every month, you will get an additional credit per vote!"\
            ],\
			"width": 400\
		},\
		{\
			"type": "minecraft:plain_message",\
			"contents": [\
                "",\
                {\
                    "bold": true,\
                    "text": "Your Totals",\
                    "underlined": true\
                },\
                " ",\
                {\
                    "text": "[🗘]",\
                    "hover_event": {\
                        "action": "show_text",\
                        "value": "Click to refresh your totals"\
                    },\
                    "click_event": {\
                        "action": "run_command",\
                        "command": "trigger vote"\
                    }\
                }\
            ],\
			"width": 400\
		},\
		{\
			"type": "minecraft:plain_message",\
			"contents": [\
                "• Votes (all time): ",\
                {\
                    "__votes__":true,\
                    "bold": true,\
                    "text": "0"\
                },\
                "\n• Votes this month: ",\
                {\
                    "__monthly_votes__":true,\
                    "bold": true,\
                    "text": "0"\
                },\
                "\n• Votes this year: ",\
                {\
                    "__yearly_votes__":true,\
                    "bold": true,\
                    "text": "0"\
                },\
                "\n• Reward Credits: ",\
                {\
                    "__reward_credits__":true,\
                    "bold": true,\
                    "text": "0"\
                }\
            ],\
			"width": 400\
		},\
		{\
			"type": "minecraft:plain_message",\
			"contents": {\
                "bold": true,\
                "text": "\nVoting Websites",\
                "underlined": true\
            },\
			"width": 400\
		}\
	],\
	"actions": [\
		{\
			"label": {\
                "color": "aqua",\
                "shadow_color": [0.0,0.75,0.75,0.75],\
                "text": "FindMCServer.com"\
            },\
            "tooltip": [\
                "",\
                {\
                    "color": "aqua",\
                    "italic": true,\
                    "text": "This is the official Minecraft server list!"\
                },\
                "\n\nINSTRUCTIONS:\n1. ",\
                {\
                    "color": "gray",\
                    "text": "Type your Minecraft username ",\
                    "extra": [\
                        {\
                            "bold": true,\
                            "text": "exactly"\
                        },\
                        " as it is written in-game."\
                    ]\
                },\
                "\n\n2. ",\
                {\
                    "color": "gray",\
                    "text": "Click \"👍 Vote\"."\
                },\
                "\n\nIf the vote does not go through, try reloading the page and trying again.",\
                {\
                    "color": "red",\
                    "text": "\n\nDo not vote while the server is down or restarting."\
                }\
            ],\
			"action": {\
				"type": "minecraft:open_url",\
				"url": "https://findmcserver.com/server/pandamium?vote=true"\
			}\
		},\
		{\
			"label": "Minecraft-Server-List.com",\
            "tooltip": [\
                "INSTRUCTIONS:\n1. ",\
                {\
                    "color": "gray",\
                    "text": "Type your Minecraft username ",\
                    "extra": [\
                        {\
                            "bold": true,\
                            "text": "exactly"\
                        },\
                        " as it is written in-game."\
                    ]\
                },\
                "\n\n2. ",\
                {\
                    "color": "gray",\
                    "text": "Click \"ᴄʟɪᴄᴋ ᴛᴏ ᴠᴏᴛᴇ\"."\
                },\
                "\n\nIf the vote does not go through, try reloading the page and trying again.",\
                {\
                    "color": "red",\
                    "text": "\n\nDo not vote while the server is down or restarting."\
                }\
            ],\
			"action": {\
				"type": "minecraft:open_url",\
				"url": "https://minecraft-server-list.com/server/445164/vote/"\
			}\
		},\
		{\
			"label": "MinecraftServers.org",\
            "tooltip": [\
                "INSTRUCTIONS:\n1. ",\
                {\
                    "color": "gray",\
                    "text": "Complete the CAPTCHA (\"I am human\")"\
                },\
                "\n\n2. ",\
                {\
                    "color": "gray",\
                    "text": "Type your Minecraft username ",\
                    "extra": [\
                        {\
                            "bold": true,\
                            "text": "exactly"\
                        },\
                        " as it is written in-game."\
                    ]\
                },\
                "\n\n3. ",\
                {\
                    "color": "gray",\
                    "text": "Click \"Vote for Pandamium\"."\
                },\
                "\n\nIf the vote does not go through, try reloading the page and trying again.",\
                {\
                    "color": "red",\
                    "text": "\n\nDo not vote while the server is down or restarting."\
                }\
            ],\
			"action": {\
				"type": "minecraft:open_url",\
				"url": "https://minecraftservers.org/vote/562059"\
			}\
		},\
		{\
			"label": "TopMinecraftServers.org",\
            "tooltip": [\
                "INSTRUCTIONS:\n1. ",\
                {\
                    "color": "gray",\
                    "text": "Complete the CAPTCHA (\"I am human\")"\
                },\
                "\n\n2. ",\
                {\
                    "color": "gray",\
                    "text": "Type your Minecraft username ",\
                    "extra": [\
                        {\
                            "bold": true,\
                            "text": "exactly"\
                        },\
                        " as it is written in-game."\
                    ]\
                },\
                "\n\n3. ",\
                {\
                    "color": "gray",\
                    "text": "Click \"☑ Vote!\"."\
                },\
                "\n\nIf the vote does not go through, try reloading the page and trying again.",\
                {\
                    "color": "red",\
                    "text": "\n\nDo not vote while the server is down or restarting."\
                }\
            ],\
			"action": {\
				"type": "minecraft:open_url",\
				"url": "http://topminecraftservers.org/vote/29717"\
			}\
		},\
		{\
			"label": "Minecraft.Global",\
            "tooltip": [\
                "INSTRUCTIONS:\n1. ",\
                {\
                    "color": "gray",\
                    "text": "Complete the CAPTCHA (\"I'm not a robot\")"\
                },\
                "\n\n2. ",\
                {\
                    "color": "gray",\
                    "text": "Type your Minecraft username ",\
                    "extra": [\
                        {\
                            "bold": true,\
                            "text": "exactly"\
                        },\
                        " as it is written in-game."\
                    ]\
                },\
                "\n\n3. ",\
                {\
                    "color": "gray",\
                    "text": "Click \"Upvote 🚀\"."\
                },\
                "\n\nIf the vote does not go through, try reloading the page and trying again.",\
                {\
                    "color": "red",\
                    "text": "\n\nDo not vote while the server is down or restarting."\
                }\
            ],\
			"action": {\
				"type": "minecraft:open_url",\
				"url": "https://minecraft.global/servers/b559672e-7906-4d17-858b-3c630000a152/vote"\
			}\
		},\
		{\
			"label": {\
				"italic": true,\
				"text": "Open All"\
			},\
			"tooltip": [\
				"Click to open all 5 voting links in your default browser",\
                {\
                    "color": "red",\
                    "text": "\n\nDo not vote while the server is down or restarting."\
                },\
                "\n\nNOTE: ",\
                {\
                    "color": "gray",\
                    "text": "This will open an article on our website which will then automatically open all 5 pages in separate tabs.\n\nIf your browser blocks pop-ups, you must enable them for that page or press the yellowy-orange button manually."\
                }\
			],\
			"action": {\
				"type": "minecraft:open_url",\
				"url": "https://www.pandamium.com/article/votes/snapshot"\
			}\
		}\
	],\
	"pause": false,\
	"after_action": "none",\
	"exit_action": {\
		"label": {\
			"translate": "gui.done"\
		},\
		"action": {\
			"type": "minecraft:run_command",\
			"command": "trigger vote set -101"\
		}\
	}\
}

execute if score @s votes matches 1.. run function pandamium:utils/resolve_text_component {write_to:'storage pandamium:local functions."pandamium:triggers/vote/*".dialog.body[2].contents[{__votes__:true}]',text_component:{bold:true,score:{name:"@s",objective:"votes"}}}
execute if score @s monthly_votes matches 1.. run function pandamium:utils/resolve_text_component {write_to:'storage pandamium:local functions."pandamium:triggers/vote/*".dialog.body[2].contents[{__monthly_votes__:true}]',text_component:{bold:true,score:{name:"@s",objective:"monthly_votes"}}}
execute if score @s yearly_votes matches 1.. run function pandamium:utils/resolve_text_component {write_to:'storage pandamium:local functions."pandamium:triggers/vote/*".dialog.body[2].contents[{__yearly_votes__:true}]',text_component:{bold:true,score:{name:"@s",objective:"yearly_votes"}}}
execute if score @s vote_credits matches 1.. run function pandamium:utils/resolve_text_component {write_to:'storage pandamium:local functions."pandamium:triggers/vote/*".dialog.body[2].contents[{__vote_credits__:true}]',text_component:{bold:true,score:{name:"@s",objective:"vote_credits"}}}

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:triggers/vote/*"
