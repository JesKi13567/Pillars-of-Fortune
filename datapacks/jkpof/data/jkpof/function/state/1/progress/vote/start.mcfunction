scoreboard players enable @a[gamemode=spectator] jkpof.vote
tellraw @a[gamemode=spectator] [{storage: "jk:pof", nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", nbt: "txt.VOF.start.p1", color: "green"}, "\n", {storage: "jk:pof", nbt: "txt.VOF.show"}, {storage: "jk:pof", nbt: "txt.VOF.start.p2", color: "white"}]

scoreboard players set #vote_show_color jkpof.int -1
execute if score #event_enable__1 jkpof.int matches 1 if score #event_border jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '-1', name: 'border'}
execute if score #event_enable_1 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '1', name: 'arrow'}
execute if score #event_enable_2 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '2', name: 'lava'}
execute if score #event_enable_3 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '3', name: 'lightning'}
execute if score #event_enable_4 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '4', name: 'moon_walk'}
execute if score #event_enable_5 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '5', name: 'bomb_chicken'}
execute if score #event_enable_6 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '6', name: 'chain_swap'}

tellraw @a[gamemode=spectator] [\
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=-1]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", nbt: "txt.event.border.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 7"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=1]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", nbt: "txt.event.arrow.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 1"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=2]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", nbt: "txt.event.lava.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 2"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=3]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", nbt: "txt.event.lightning.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 3"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=4]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", nbt: "txt.event.moon_walk.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 4"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=5]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", nbt: "txt.event.bomb_chicken.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 5"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=6]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", nbt: "txt.event.chain_swap.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 6"}}, \
]

kill @e[type=marker, tag=jkpof_vote_show]

# 计时
scoreboard players set #event_vote_last jkpof.int 16
