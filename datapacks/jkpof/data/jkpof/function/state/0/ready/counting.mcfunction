# 人数不够
execute if score #players jkpof.int matches ..1 run function jkpof:state/0/ready/canceled

# 初始化倒计时
execute if score #start_flag jkpof.int matches 1 run scoreboard players set #countdown jkpof.int 10
execute if score #start_flag jkpof.int matches 1 run scoreboard players set #start_flag jkpof.int 2

# 显示
execute if score #countdown jkpof.int matches 1.. run title @a times 0 1.1s 0
execute if score #countdown jkpof.int matches 1.. run title @a title {text: "游戏即将开始", color: "green"}
execute if score #countdown jkpof.int matches 1.. run title @a subtitle {score: {name: "#countdown", objective: "jkpof.int"}}

# 自动人数
execute if score #countdown jkpof.int matches 1 if score #ctrl_pillar_count_order jkpof.int matches -1 run function jkpof:state/0/interaction/ctrl/pillar/count/show

# 进入
execute if score #countdown jkpof.int matches ..0 run function jkpof:state/1/enter

# 倒数
execute if score #start_flag jkpof.int matches 2 run scoreboard players remove #countdown jkpof.int 1

# 音效
execute positioned 95 64 0 run playsound block.note_block.xylophone block @a
