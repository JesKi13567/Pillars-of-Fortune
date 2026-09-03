tag @a remove jkpof_voted
scoreboard players enable @a[gamemode=spectator] jkpof.vote
tellraw @a[gamemode=spectator] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.start.p1", color: "green"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.VOF.show"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.start.p2", color: "white"}]

scoreboard players set #vote_show_color jkpof.int -1
execute if score #event_enable__1 jkpof.int matches 1 if score #event_border.o jkpof.int < #event_border.t jkpof.int run function jkpof:state/1/progress/vote/colored {id: '-1'}
execute if score #event_enable_1 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '1'}
execute if score #event_enable_2 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '2'}
execute if score #event_enable_3 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '3'}
execute if score #event_enable_4 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '4'}
execute if score #event_enable_5 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '5'}
execute if score #event_enable_6 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '6'}
execute if score #event_enable_7 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '7'}
execute if score #event_enable_8 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '8'}
execute if score #event_enable_9 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '9'}
execute if score #event_enable_10 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '10'}
execute if score #event_enable_11 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '11'}
execute if score #event_enable_12 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '12'}
execute if score #event_enable_13 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '13'}
execute if score #event_enable_14 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '14'}
execute if score #event_enable_15 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '15'}
execute if score #event_enable_16 jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '16'}
execute if score #event_enable_17 jkpof.int matches 1.. if score #event_nuke.c jkpof.int matches 1.. run function jkpof:state/1/progress/vote/colored {id: '17'}

tellraw @a[gamemode=spectator] [\
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=-1]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=-1, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 99"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=1]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=1, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 1"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=2]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=2, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 2"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=3]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=3, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 3"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=4]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=4, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 4"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=5]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=5, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 5"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=6]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=6, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 6"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=7]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=7, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 7"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=8]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=8, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 8"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=9]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=9, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 9"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=10]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=10, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 10"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=11]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=11, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 11"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=12]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=12, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 12"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=13]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=13, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 13"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=14]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=14, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 14"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=15]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=15, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 15"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=16]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=16, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 16"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=17]", hover_event: {action: "show_text", value: {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=17, limit=1]", color: "gold"}}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 17"}}, \
]

kill @e[type=marker, tag=jkpof_vote_show]

# 计时
scoreboard players set #event_vote.last jkpof.int 300
