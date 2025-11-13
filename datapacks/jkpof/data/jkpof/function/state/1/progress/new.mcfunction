# 触发时间减少
scoreboard players add #event_loop jkpof.int 1

execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 0 if score #players jkpof.int matches 2 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "只剩 2 名玩家，往后事件触发时间减半！", color: "aqua"}]
execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 0 if score #players jkpof.int matches 2 run scoreboard players set #event_loop jkpof.int 7
execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 1 if score #teams jkpof.int matches 2 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "只剩 2 支队伍，往后事件触发时间减半！", color: "aqua"}]
execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 1 if score #teams jkpof.int matches 2 run scoreboard players set #event_loop jkpof.int 7

execute if score #event_loop jkpof.int matches 6 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "事件循环已达 6 次，往后触发时间减半！", color: "aqua"}]

execute if score #event_loop jkpof.int matches ..5 run scoreboard players set #event_progress jkpof.int 60
execute if score #event_loop jkpof.int matches 6.. run scoreboard players set #event_progress jkpof.int 30
execute store result bossbar jkpof:progress max run scoreboard players get #event_progress jkpof.int

title @a times 0 3s 8t

# 边界收缩
execute if score #event_mode jkpof.int matches -1 run function jkpof:state/1/progress/event/once/border/global

# 万箭齐发
execute if score #event_mode jkpof.int matches 1 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "2 秒 ", color: "white"}, {text: "后，玩家头上将不断生成", color: "aqua"}, {translate: "entity.minecraft.arrow"}, {text: "，持续", color: "aqua"}, " 3 秒", {text: "！", color: "aqua"}]
execute if score #event_mode jkpof.int matches 1 run title @a title {text: "万箭齐发", color: "aqua"}
execute if score #event_mode jkpof.int matches 1 run title @a subtitle {text: "注意头顶的箭雨", color: "green"}

# 熔岩地板
execute if score #event_mode jkpof.int matches 2 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "现在开始，玩家脚下的方块会逐渐变成", color: "aqua"}, {translate: "block.minecraft.lava"}, {text: "，持续", color: "aqua"}, " 5 秒", {text: "！", color: "aqua"}]
execute if score #event_mode jkpof.int matches 2 run title @a title {text: "熔岩地板", color: "aqua"}
execute if score #event_mode jkpof.int matches 2 run title @a subtitle {text: "注意脚下的方块", color: "green"}

# 雷霆之劫
execute if score #event_mode jkpof.int matches 3 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "将在", color: "aqua"}, " 5 秒 ", {text: "后给予随机玩家一发", color: "aqua"}, {translate: "entity.minecraft.lightning_bolt"}, {text: "！", color: "aqua"}]
execute if score #event_mode jkpof.int matches 3 run title @a title {text: "雷霆之劫", color: "aqua"}
execute if score #event_mode jkpof.int matches 3 run title @a subtitle {text: "命有此劫", color: "green"}

# 月球漫步
execute if score #event_mode jkpof.int matches 4 run function jkpof:state/1/progress/event/once/moon_walk

# 飞鸡来袭
execute if score #event_mode jkpof.int matches 5 run function jkpof:state/1/progress/event/bomb_chicken/summon

# 触发时间
execute if score #event_mode jkpof.int matches 1.. run scoreboard players set #event_time jkpof.int 100
execute if score #event_mode jkpof.int matches 1.. run scoreboard players operation #event_type jkpof.int = #event_mode jkpof.int

# 新阶段
execute unless score #event_mode jkpof.int matches 0 as @a[scores={jkpof.state=2}, gamemode=survival] at @s run playsound block.note_block.bit player @s

execute store result score #event_cur_count jkpof.int run data get storage jk:pof data.event.count
execute if score #event_cur_count jkpof.int matches 0.. run function jkpof:state/1/progress/roll/start
execute if score #event_cur_count jkpof.int matches -1 run function jkpof:state/1/progress/roll/runout

# 投票
execute if score #event_cur_count jkpof.int matches 1.. if score #event_vote jkpof.int matches 1 if score #event_loop jkpof.int matches 6.. run function jkpof:state/1/progress/vote/start
