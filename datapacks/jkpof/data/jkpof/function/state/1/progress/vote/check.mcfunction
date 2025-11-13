# 记录投票数
execute if score #event_enable__1 jkpof.int matches 1 if score #event_border jkpof.int matches 1.. run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "-1"]}
execute if score #event_enable_1 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "1"]}
execute if score #event_enable_2 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "2"]}
execute if score #event_enable_3 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "3"]}
execute if score #event_enable_4 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "4"]}
execute if score #event_enable_5 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "5"]}

execute store result score @e[type=marker, tag=jkpof_votes, tag=-1, limit=1] jkpof.int if entity @a[scores={jkpof.vote=6}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=1, limit=1] jkpof.int if entity @a[scores={jkpof.vote=1}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=2, limit=1] jkpof.int if entity @a[scores={jkpof.vote=2}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=3, limit=1] jkpof.int if entity @a[scores={jkpof.vote=3}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=4, limit=1] jkpof.int if entity @a[scores={jkpof.vote=4}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=5, limit=1] jkpof.int if entity @a[scores={jkpof.vote=5}, gamemode=spectator]

# 判断最大值
scoreboard players set #event_votes_max jkpof.int 0
scoreboard players operation #event_votes_max jkpof.int > @e[type=marker, tag=jkpof_votes] jkpof.int
# 随机选一个同等最大的
execute as @e[type=marker, tag=jkpof_votes] if score @s jkpof.int = #event_votes_max jkpof.int run tag @s add jkpof_votes_max
tag @e[type=marker, tag=jkpof_votes_max, sort=random, limit=1] add jkpof_votes_max_final

# 展示
execute if score #event_mode jkpof.int matches -1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"], CustomName: "[边界收缩]"}
execute if score #event_mode jkpof.int matches 0 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"], CustomName: "[无事发生]"}
execute if score #event_mode jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"], CustomName: "[万箭齐发]"}
execute if score #event_mode jkpof.int matches 2 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"], CustomName: "[熔岩地板]"}
execute if score #event_mode jkpof.int matches 3 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"], CustomName: "[雷霆之劫]"}
execute if score #event_mode jkpof.int matches 4 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"], CustomName: "[月球漫步]"}
execute if score #event_mode jkpof.int matches 5 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"], CustomName: "[飞鸡来袭]"}

execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=-1] run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"], CustomName: "[边界收缩]"}
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=1] run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"], CustomName: "[万箭齐发]"}
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=2] run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"], CustomName: "[熔岩地板]"}
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=3] run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"], CustomName: "[雷霆之劫]"}
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=4] run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"], CustomName: "[月球漫步]"}
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=5] run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"], CustomName: "[飞鸡来袭]"}

tellraw @a [{text: "【幸运之票】", color: "aqua"}, {text: "观众投票事件成功：", color: "green"}, {selector: "@e[type=marker, tag=jkpof_votes, tag=before]", color: "gray"}, {text: " -> ", color: "green"}, {selector: "@e[type=marker, tag=jkpof_votes, tag=after]", color: "aqua"}]

# 设置
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=-1] run scoreboard players set #event_mode jkpof.int -1
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=1] run scoreboard players set #event_mode jkpof.int 1
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=2] run scoreboard players set #event_mode jkpof.int 2
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=3] run scoreboard players set #event_mode jkpof.int 3
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=4] run scoreboard players set #event_mode jkpof.int 4
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=5] run scoreboard players set #event_mode jkpof.int 5

# 最多投票数展示
tellraw @a[gamemode=spectator] [{text: "【幸运之票】", color: "aqua"}, {text: "最多投票事件列表：", color: "green"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=-1] run tellraw @a[gamemode=spectator] ["[边界收缩]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=6}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=1] run tellraw @a[gamemode=spectator] ["[万箭齐发]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=1}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=2] run tellraw @a[gamemode=spectator] ["[熔岩地板]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=2}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=3] run tellraw @a[gamemode=spectator] ["[雷霆之劫]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=3}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=4] run tellraw @a[gamemode=spectator] ["[月球漫步]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=4}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=5] run tellraw @a[gamemode=spectator] ["[飞鸡来袭]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=5}, gamemode=spectator]"}]

# 清理
kill @e[type=marker, tag=jkpof_votes]
