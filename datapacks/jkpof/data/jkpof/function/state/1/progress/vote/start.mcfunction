scoreboard players enable @a[gamemode=spectator] jkpof.vote
tellraw @a[gamemode=spectator] [{text: "【幸运之票】", color: "aqua"}, {text: "现在观众可以为下一次事件投票！", color: "green"}, {text: " 1 次点击机会，10 秒后结算：", color: "white"}]

execute if score #event_enable__1 jkpof.int matches 1 if score #event_border jkpof.int matches 1.. run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_vote_show", "-1"], CustomName: "[边界收缩] "}
scoreboard players set #vote_show_color jkpof.int 0
execute if score #event_enable_1 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: 1, name: '万箭齐发'}
execute if score #event_enable_2 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: 2, name: '熔岩地板'}
execute if score #event_enable_3 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: 3, name: '雷霆之劫'}
execute if score #event_enable_4 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: 4, name: '月球漫步'}
execute if score #event_enable_5 jkpof.int matches 1 run function jkpof:state/1/progress/vote/colored {id: 5, name: '飞鸡来袭'}

tellraw @a[gamemode=spectator] [\
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=-1]", hover_event: {action: "show_text", value: "投票[边界收缩]"}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 6"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=1]", hover_event: {action: "show_text", value: "投票[万箭齐发]"}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 1"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=2]", hover_event: {action: "show_text", value: "投票[熔岩地板]"}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 2"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=3]", hover_event: {action: "show_text", value: "投票[雷霆之劫]"}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 3"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=4]", hover_event: {action: "show_text", value: "投票[月球漫步]"}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 4"}}, \
{selector: "@e[type=marker, tag=jkpof_vote_show, tag=5]", hover_event: {action: "show_text", value: "投票[飞鸡来袭]"}, click_event: {action: "run_command", command: "/trigger jkpof.vote set 5"}}, \
]

kill @e[type=marker, tag=jkpof_vote_show]

# 计时
scoreboard players set #event_vote_last jkpof.int 11
