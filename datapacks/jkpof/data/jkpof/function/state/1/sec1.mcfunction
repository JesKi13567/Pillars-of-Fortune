# 开始前准备
execute if score #before_start jkpof.int matches 1.. run function jkpof:state/1/before_start

# 给资源
scoreboard players remove #time_res jkpof.int 1
execute if score #time_res jkpof.int matches ..0 run function jkpof:state/1/give
title @a[scores={jkpof.state=2}, gamemode=survival] actionbar [{text: "物品给予：", color: "yellow"}, {score: {name: "#time_res", objective: "jkpof.int"}, color: "gold"}, "s"]

# 快乐恶魂特判
execute as @e[type=happy_ghast] at @s run function jkpof:state/1/happy_ghast

# 旁观者夜视
effect give @a[gamemode=spectator] night_vision infinite 0 true

# 进度条
function jkpof:state/1/progress/sec1
