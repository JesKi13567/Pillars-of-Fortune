tag @a remove jkpof_voted
scoreboard players enable @a[gamemode=spectator] jkpof.vote
tellraw @a[gamemode=spectator] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.start.p1", color: "green"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.VOF.show"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.start.p2", color: "white"}]

scoreboard players set #vote_show_color jkpof.int -1
execute if score #event_enable__1 jkpof.int matches 1 if score #event_border jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '-1', name: 'border'}
execute if score #event_enable_1 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '1', name: 'arrow'}
execute if score #event_enable_2 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '2', name: 'lava'}
execute if score #event_enable_3 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '3', name: 'lightning'}
execute if score #event_enable_4 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '4', name: 'moon_walk'}
execute if score #event_enable_5 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '5', name: 'bomb_chicken'}
execute if score #event_enable_6 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '6', name: 'chain_swap'}
execute if score #event_enable_7 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '7', name: 'prop_supply'}
execute if score #event_enable_8 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '8', name: 'vertical_lock'}
execute if score #event_enable_9 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '9', name: 'invisible_coating'}
execute if score #event_enable_10 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: '10', name: 'betrayal_hour'}

tellraw @a[gamemode=spectator] [\
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=-1]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.border.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 11"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=1]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 1"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=2]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 2"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=3]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 3"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=4]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 4"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=5]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 5"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=6]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 6"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=7]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 7"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=8]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 8"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=9]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 9"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=10]", hover_event: {action: "show_text", value: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name"}, "]"]}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 10"}}, \
]

kill @e[type=marker, tag=jkpof_vote_show]

# 计时
scoreboard players set #event_vote.last jkpof.int 300
