# 循环次数增加
scoreboard players add #event_loop jkpof.int 1

execute if score #event_loop jkpof.int matches ..5 if score #teams jkpof.int matches 2 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.loop.half_time.2.teams", color: "aqua"}]
execute if score #event_loop jkpof.int matches ..5 if score #teams jkpof.int matches 2 run scoreboard players set #event_loop jkpof.int 7

execute if score #event_loop jkpof.int matches 6 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.loop.half_time.6", color: "aqua"}]

execute if score #event_loop jkpof.int matches ..5 run scoreboard players set #event_progress jkpof.int 60
execute if score #event_loop jkpof.int matches 6.. run scoreboard players set #event_progress jkpof.int 30
execute store result bossbar jkpof:progress max run scoreboard players get #event_progress jkpof.int

title @a times 0 3s 8t

# 结束事件
execute if score #event_betrayal_hour.status jkpof.int matches 1 run function jkpof:state/1/progress/event/10_betrayal_hour/recover
execute if score #event_kid_mode jkpof.int matches 1 run function jkpof:state/1/progress/event/14_kid_mode/end
execute if score #event_touch_change jkpof.int matches 1 run function jkpof:state/1/progress/event/15_touch_change/end

# 边界收缩
execute if score #event_mode jkpof.int matches -1 run function jkpof:state/1/progress/event/_1_border/global
# 万箭齐发
execute if score #event_mode jkpof.int matches 1 run function jkpof:state/1/progress/event/1_arrow/show
# 熔岩地板
execute if score #event_mode jkpof.int matches 2 run function jkpof:state/1/progress/event/2_lava/show
# 雷霆之劫
execute if score #event_mode jkpof.int matches 3 run function jkpof:state/1/progress/event/3_lightning/show
# 月球漫步
execute if score #event_mode jkpof.int matches 4 run function jkpof:state/1/progress/event/4_moon_walk/show
# 飞鸡来袭
execute if score #event_mode jkpof.int matches 5 run function jkpof:state/1/progress/event/5_bomb_chicken/summon
# 连锁换位
execute if score #event_mode jkpof.int matches 6 run function jkpof:state/1/progress/event/6_chain_swap/show
# 道具补给
execute if score #event_mode jkpof.int matches 7 run function jkpof:state/1/progress/event/7_prop_supply/show
# 天地封锁
execute if score #event_mode jkpof.int matches 8 run function jkpof:state/1/progress/event/8_vertical_lock/show
# 隐形涂层
execute if score #event_mode jkpof.int matches 9 run function jkpof:state/1/progress/event/9_invisible_coating/show
# 背叛之时
execute if score #event_mode jkpof.int matches 10 run function jkpof:state/1/progress/event/10_betrayal_hour/show
# 五谷丰登
execute if score #event_mode jkpof.int matches 11 run function jkpof:state/1/progress/event/11_bountiful_harvest/show
# 钢铁洪流
execute if score #event_mode jkpof.int matches 12 run function jkpof:state/1/progress/event/12_iron_torrent/show
# 吸星大法
execute if score #event_mode jkpof.int matches 13 run function jkpof:state/1/progress/event/13_loot_magnet/show
# 小孩模式
execute if score #event_mode jkpof.int matches 14 run function jkpof:state/1/progress/event/14_kid_mode/show
# 触则生变
execute if score #event_mode jkpof.int matches 15 run function jkpof:state/1/progress/event/15_touch_change/show
# 万物归零
execute if score #event_mode jkpof.int matches 16 run function jkpof:state/1/progress/event/16_purge/show
# 世界核平
execute if score #event_mode jkpof.int matches 17 run function jkpof:state/1/progress/event/17_nuke/show

# 持续时间
execute if score #event_mode jkpof.int matches 1.. run scoreboard players operation #event_type jkpof.int = #event_mode jkpof.int

# 新阶段
execute unless score #event_mode jkpof.int matches 0 run playsound block.note_block.bit block @a[scores={jkpof.state=2}] 0 1000000 0 10000000

execute store result score #event_cur_count jkpof.int run data get storage jk:pof data.event.count
execute if score #event_cur_count jkpof.int matches 0.. run function jkpof:state/1/progress/roll/start
execute if score #event_cur_count jkpof.int matches -1 run function jkpof:state/1/progress/roll/runout

# 投票
execute if score #event_cur_count jkpof.int matches 1.. if score #event_vote jkpof.int matches 1 if score #event_loop jkpof.int matches 6.. run function jkpof:state/1/progress/vote/start
