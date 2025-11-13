# 游戏结束
execute if entity @p[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/end/win
execute unless entity @p[scores={jkpof.state=2}, gamemode=survival] run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏结束，没人获胜喵。", color: "green"}]

scoreboard players operation #time_last_m jkpof.int = #time_last jkpof.int
scoreboard players operation #time_last_m jkpof.int /= #60 jkpof.int
scoreboard players operation #time_last_s jkpof.int = #time_last jkpof.int
scoreboard players operation #time_last_s jkpof.int %= #60 jkpof.int

execute if score #time_last_m jkpof.int matches ..9 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_time_show", "jkpof_time_0_m"], CustomName: {text: "0", color: "gold"}}
execute if score #time_last_s jkpof.int matches ..9 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_time_show", "jkpof_time_0_s"], CustomName: {text: "0", color: "gold"}}

tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "本局游戏用时 ", color: "green"}, {selector: "@e[type=marker, tag=jkpof_time_0_m, limit=1]", hover_event: {action: "show_text", value: ""}}, {score: {name: "#time_last_m", objective: "jkpof.int"}, color: "gold"}, {text: " : ", color: "gold"}, {selector: "@e[type=marker, tag=jkpof_time_0_s, limit=1]", hover_event: {action: "show_text", value: ""}}, {score: {name: "#time_last_s", objective: "jkpof.int"}, color: "gold"}]

kill @e[type=marker, tag=jkpof_time_show]

function jkpof:state/0/enter
