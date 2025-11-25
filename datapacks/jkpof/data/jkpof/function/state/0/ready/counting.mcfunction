# 音效
execute as @a at @s run playsound block.note_block.xylophone block @a

# 人数不够
execute if score #ctrl_team jkpof.int matches 0 if score #players jkpof.int matches ..1 run function jkpof:state/0/ready/cancel
execute if score #ctrl_team jkpof.int matches 1 if score #teams jkpof.int matches ..1 run function jkpof:state/0/ready/cancel

# 显示
execute if score #countdown jkpof.int matches 1.. run title @a times 0 1.1s 0
execute if score #countdown jkpof.int matches 1.. run title @a title {storage: "jk:pof", nbt: "txt.game.start.soon", color: "green"}
execute if score #countdown jkpof.int matches 1.. run title @a subtitle {score: {name: "#countdown", objective: "jkpof.int"}}

# 自动人数
execute if score #countdown jkpof.int matches 1 if score #ctrl_pillar_count_order jkpof.int matches -1 run function jkpof:state/0/interaction/ctrl/pillar/count/auto

# 进入
execute if score #start_flag jkpof.int matches 1 if score #countdown jkpof.int matches ..0 run function jkpof:state/1/enter

# 倒数
scoreboard players remove #countdown jkpof.int 1
