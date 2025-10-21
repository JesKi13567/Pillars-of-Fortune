# 人数不够了
execute if score #players jkpof.int matches ..1 run function jkpof:state/0/ready/canceled

# 初始化倒计时
execute if score #start_flag jkpof.int matches 1 run scoreboard players set #countdown jkpof.int 10
execute if score #start_flag jkpof.int matches 1 run scoreboard players set #start_flag jkpof.int 2

title @a times 0 1.1s 0
title @a title {text: "游戏即将开始", color: "green"}
title @a subtitle {score: {name: "#countdown", objective: "jkpof.int"}}

execute if score #start_flag jkpof.int matches 2 run scoreboard players remove #countdown jkpof.int 1

execute positioned 132 48 0 run playsound block.note_block.xylophone block @a

execute if score #countdown jkpof.int matches ..0 run function jkpof:state/1/enter
