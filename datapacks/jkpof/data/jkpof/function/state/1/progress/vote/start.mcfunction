scoreboard players enable @a[gamemode=spectator] jkpof.spec.vote
tellraw @a[gamemode=spectator] [{text: "【幸运之票】", color: "aqua"}, {text: "现在观众可以为下一次事件投票！", color: "green"}, {text: " 1 次点击机会，10 秒后结算：", color: "white"}]

execute if score #progress_border jkpof.int matches 1.. run tellraw @a[gamemode=spectator] [{text: "", color: "green"}, \
{text: "[边界收缩]", hover_event: {action: "show_text", value: "投票[边界收缩]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 6"}}, "  ", \
{text: "[万箭齐发]", color: "white", hover_event: {action: "show_text", value: "投票[万箭齐发]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 1"}}, "  ", \
{text: "[熔岩地板]", hover_event: {action: "show_text", value: "投票[熔岩地板]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 2"}}, "  ", \
{text: "[雷霆之劫]", color: "white", hover_event: {action: "show_text", value: "投票[雷霆之劫]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 3"}}, "  ", \
{text: "[月球漫步]", hover_event: {action: "show_text", value: "投票[月球漫步]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 4"}}, "  ", \
{text: "[飞鸡来袭]", color: "white", hover_event: {action: "show_text", value: "投票[飞鸡来袭]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 5"}}, "  ", \
]

execute if score #progress_border jkpof.int matches 0 run tellraw @a[gamemode=spectator] [{text: "", color: "green"}, \
{text: "[万箭齐发]", color: "white", hover_event: {action: "show_text", value: "投票[万箭齐发]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 1"}}, "  ", \
{text: "[熔岩地板]", hover_event: {action: "show_text", value: "投票[熔岩地板]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 2"}}, "  ", \
{text: "[雷霆之劫]", color: "white", hover_event: {action: "show_text", value: "投票[雷霆之劫]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 3"}}, "  ", \
{text: "[月球漫步]", hover_event: {action: "show_text", value: "投票[月球漫步]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 4"}}, "  ", \
{text: "[飞鸡来袭]", color: "white", hover_event: {action: "show_text", value: "投票[飞鸡来袭]"}, click_event: {action: "run_command", command: "/trigger jkpof.spec.vote set 5"}}, "  ", \
]

execute unless score #test_mode jkpof.int matches 1 run schedule function jkpof:state/1/progress/vote/end 10s replace
execute if score #test_mode jkpof.int matches 1 run schedule function jkpof:state/1/progress/vote/end 3s replace
