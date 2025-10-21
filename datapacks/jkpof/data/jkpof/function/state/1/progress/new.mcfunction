# 边界收缩
execute if score #progress_mode jkpof.int matches -2 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "边界将在", color: "aqua"}, {text: " 10 秒 ", color: "yellow"}, {text: "内半径收缩", color: "aqua"}, {text: " 10 格", color: "yellow"}, {text: "！", color: "aqua"}]
execute if score #progress_mode jkpof.int matches -2 run worldborder set 29 10

# 无事发生
#execute if score #progress_mode jkpof.int matches -1..0 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "无事发生。", color: "aqua"}]

# 万箭齐发
execute if score #progress_mode jkpof.int matches 1 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: " 2 秒 ", color: "white"}, {text: "后，玩家头上将不断生成箭矢，持续", color: "aqua"}, " 3 秒 ", {text: "！", color: "aqua"}]

# 地板是岩浆
execute if score #progress_mode jkpof.int matches 2 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "现在开始，玩家脚下的方块会逐渐变成岩浆，持续", color: "aqua"}, " 5 秒 ", {text: "！", color: "aqua"}]

# 雷劫
execute if score #progress_mode jkpof.int matches 3 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "将在", color: "aqua"}, " 5 秒 ", {text: "后给予随机玩家一发雷电！", color: "aqua"}]

# 时间相同，写一块了
execute if score #progress_mode jkpof.int matches 1.. run scoreboard players set #mutation_time jkpof.int 100
execute if score #progress_mode jkpof.int matches 1.. run scoreboard players operation #mutation_type jkpof.int = #progress_mode jkpof.int

# 新阶段
execute unless score #progress_mode jkpof.int matches -1..0 as @a[scores={jkpof.state=2}, gamemode=survival] at @s run playsound block.note_block.bit player @s

scoreboard players add #progress_count jkpof.int 1
execute if score #progress_count jkpof.int matches ..5 run scoreboard players set #progress_value jkpof.int 60
execute if score #progress_count jkpof.int matches 6 run bossbar set jkpof:progress max 30
execute if score #progress_count jkpof.int matches 6 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏时长已达 6 分钟，事件触发时间减半！", color: "aqua"}]
execute if score #progress_count jkpof.int matches 6.. run scoreboard players set #progress_value jkpof.int 30

execute if score #progress_border jkpof.int matches 1 store result score #progress_mode jkpof.int run random value -2..3
execute unless score #progress_border jkpof.int matches 1 store result score #progress_mode jkpof.int run random value -1..3
execute if score #progress_mode jkpof.int matches -2 run scoreboard players reset #progress_border jkpof.int
