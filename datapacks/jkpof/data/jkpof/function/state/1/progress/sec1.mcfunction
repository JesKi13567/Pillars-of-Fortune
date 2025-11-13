# 阶段分数减少
scoreboard players remove #event_progress jkpof.int 1

# 倒计时结束，新阶段
execute if score #event_progress jkpof.int matches ..0 run function jkpof:state/1/progress/new

# 显示
execute store result bossbar jkpof:progress value run scoreboard players get #event_progress jkpof.int

execute if score #event_mode jkpof.int matches -1 run bossbar set jkpof:progress name [{text: "下一事件：", color: "gold"}, {text: "边界收缩", color: "aqua"}, " ", {score: {name: "#event_progress", objective: "jkpof.int"}, color: "yellow"}, "秒"]
execute if score #event_mode jkpof.int matches 0 run bossbar set jkpof:progress name [{text: "下一事件：", color: "gold"}, {text: "无事发生", color: "aqua"}, " ", {score: {name: "#event_progress", objective: "jkpof.int"}, color: "yellow"}, "秒"]
execute if score #event_mode jkpof.int matches 1 run bossbar set jkpof:progress name [{text: "下一事件：", color: "gold"}, {text: "万箭齐发", color: "aqua"}, " ", {score: {name: "#event_progress", objective: "jkpof.int"}, color: "yellow"}, "秒"]
execute if score #event_mode jkpof.int matches 2 run bossbar set jkpof:progress name [{text: "下一事件：", color: "gold"}, {text: "熔岩地板", color: "aqua"}, " ", {score: {name: "#event_progress", objective: "jkpof.int"}, color: "yellow"}, "秒"]
execute if score #event_mode jkpof.int matches 3 run bossbar set jkpof:progress name [{text: "下一事件：", color: "gold"}, {text: "雷霆之劫", color: "aqua"}, " ", {score: {name: "#event_progress", objective: "jkpof.int"}, color: "yellow"}, "秒"]
execute if score #event_mode jkpof.int matches 4 run bossbar set jkpof:progress name [{text: "下一事件：", color: "gold"}, {text: "月球漫步", color: "aqua"}, " ", {score: {name: "#event_progress", objective: "jkpof.int"}, color: "yellow"}, "秒"]
execute if score #event_mode jkpof.int matches 5 run bossbar set jkpof:progress name [{text: "下一事件：", color: "gold"}, {text: "飞鸡来袭", color: "aqua"}, " ", {score: {name: "#event_progress", objective: "jkpof.int"}, color: "yellow"}, "秒"]

# 观众投票结算
execute if score #event_vote jkpof.int matches 1 if score #event_vote_last jkpof.int matches 0.. run scoreboard players remove #event_vote_last jkpof.int 1
execute if score #event_vote jkpof.int matches 1 if score #event_vote_last jkpof.int matches 0 run function jkpof:state/1/progress/vote/end
