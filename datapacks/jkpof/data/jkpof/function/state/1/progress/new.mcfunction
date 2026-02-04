# 循环次数增加
scoreboard players add #event_loop jkpof.int 1

execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 0 if score #players jkpof.int matches 2 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.loop.half_time.2.players", color: "aqua"}]
execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 0 if score #players jkpof.int matches 2 run scoreboard players set #event_loop jkpof.int 7
execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 1..2 if score #teams jkpof.int matches 2 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.loop.half_time.2.teams", color: "aqua"}]
execute if score #event_loop jkpof.int matches ..5 if score #ctrl_team jkpof.int matches 1..2 if score #teams jkpof.int matches 2 run scoreboard players set #event_loop jkpof.int 7

execute if score #event_loop jkpof.int matches 6 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.loop.half_time.6", color: "aqua"}]

execute if score #event_loop jkpof.int matches ..5 run scoreboard players set #event_progress jkpof.int 60
execute if score #event_loop jkpof.int matches 6.. run scoreboard players set #event_progress jkpof.int 30
execute store result bossbar jkpof:progress max run scoreboard players get #event_progress jkpof.int

title @a times 0 3s 8t

# 边界收缩
execute if score #event_mode jkpof.int matches -1 run function jkpof:state/1/progress/event/once/border/global

# 万箭齐发
execute if score #event_mode jkpof.int matches 1 run function jkpof:state/1/progress/event/arrow/show

# 熔岩地板
execute if score #event_mode jkpof.int matches 2 run function jkpof:state/1/progress/event/lava/show

# 雷霆之劫
execute if score #event_mode jkpof.int matches 3 run function jkpof:state/1/progress/event/once/lightning/show

# 月球漫步
execute if score #event_mode jkpof.int matches 4 run function jkpof:state/1/progress/event/once/moon_walk

# 飞鸡来袭
execute if score #event_mode jkpof.int matches 5 run function jkpof:state/1/progress/event/bomb_chicken/summon

# 连锁换位
execute if score #event_mode jkpof.int matches 6 run function jkpof:state/1/progress/event/once/chain_swap/show

# 道具补给
execute if score #event_mode jkpof.int matches 7 run function jkpof:state/1/progress/event/once/prop_supply

# 持续时间
execute if score #event_mode jkpof.int matches 1.. run scoreboard players set #event_time jkpof.int 100
execute if score #event_mode jkpof.int matches 1.. run scoreboard players operation #event_type jkpof.int = #event_mode jkpof.int

# 新阶段
execute unless score #event_mode jkpof.int matches 0 run playsound block.note_block.bit block @a[scores={jkpof.state=2}, gamemode=survival] 0 1000000 0 10000000

execute store result score #event_cur_count jkpof.int run data get storage jk:pof data.event.count
execute if score #event_cur_count jkpof.int matches 0.. run function jkpof:state/1/progress/roll/start
execute if score #event_cur_count jkpof.int matches -1 run function jkpof:state/1/progress/roll/runout

# 投票
execute if score #event_cur_count jkpof.int matches 1.. if score #event_vote jkpof.int matches 1 if score #event_loop jkpof.int matches 6.. run function jkpof:state/1/progress/vote/start
