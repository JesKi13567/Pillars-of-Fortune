# 记录投票数
execute if score #event_enable__1 jkpof.int matches 1 if score #event_border.o jkpof.int < #event_border.t jkpof.int run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "-1"]}
execute if score #event_enable_1 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "1"]}
execute if score #event_enable_2 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "2"]}
execute if score #event_enable_3 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "3"]}
execute if score #event_enable_4 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "4"]}
execute if score #event_enable_5 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "5"]}
execute if score #event_enable_6 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "6"]}
execute if score #event_enable_7 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "7"]}
execute if score #event_enable_8 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "8"]}
execute if score #event_enable_9 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "9"]}
execute if score #event_enable_10 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "10"]}
execute if score #event_enable_11 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "11"]}
execute if score #event_enable_12 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "12"]}
execute if score #event_enable_13 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "13"]}
execute if score #event_enable_14 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "14"]}
execute if score #event_enable_15 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "15"]}
execute if score #event_enable_16 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "16"]}
execute if score #event_enable_17 jkpof.int matches 1 if score #event_nuke.c jkpof.int matches 1.. run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "17"]}

execute store result score @e[type=marker, tag=jkpof_votes, tag=-1, limit=1] jkpof.int if entity @a[scores={jkpof.vote=99}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=1, limit=1] jkpof.int if entity @a[scores={jkpof.vote=1}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=2, limit=1] jkpof.int if entity @a[scores={jkpof.vote=2}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=3, limit=1] jkpof.int if entity @a[scores={jkpof.vote=3}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=4, limit=1] jkpof.int if entity @a[scores={jkpof.vote=4}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=5, limit=1] jkpof.int if entity @a[scores={jkpof.vote=5}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=6, limit=1] jkpof.int if entity @a[scores={jkpof.vote=6}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=7, limit=1] jkpof.int if entity @a[scores={jkpof.vote=7}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=8, limit=1] jkpof.int if entity @a[scores={jkpof.vote=8}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=9, limit=1] jkpof.int if entity @a[scores={jkpof.vote=9}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=10, limit=1] jkpof.int if entity @a[scores={jkpof.vote=10}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=11, limit=1] jkpof.int if entity @a[scores={jkpof.vote=11}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=12, limit=1] jkpof.int if entity @a[scores={jkpof.vote=12}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=13, limit=1] jkpof.int if entity @a[scores={jkpof.vote=13}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=14, limit=1] jkpof.int if entity @a[scores={jkpof.vote=14}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=15, limit=1] jkpof.int if entity @a[scores={jkpof.vote=15}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=16, limit=1] jkpof.int if entity @a[scores={jkpof.vote=16}, gamemode=spectator, tag=jkpof_voted]
execute store result score @e[type=marker, tag=jkpof_votes, tag=17, limit=1] jkpof.int if entity @a[scores={jkpof.vote=17}, gamemode=spectator, tag=jkpof_voted]

# 判断最大值
scoreboard players set #event_votes_max jkpof.int 0
scoreboard players operation #event_votes_max jkpof.int > @e[type=marker, tag=jkpof_votes] jkpof.int
# 随机选一个同等最大的
execute as @e[type=marker, tag=jkpof_votes] if score @s jkpof.int = #event_votes_max jkpof.int run tag @s add jkpof_votes_max
tag @e[type=marker, tag=jkpof_votes_max, sort=random, limit=1] add jkpof_votes_max_final

# 展示
summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"]}
execute if score #event_mode jkpof.int matches -1 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=-1, limit=1] text
execute if score #event_mode jkpof.int matches 0 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=0, limit=1] text
execute if score #event_mode jkpof.int matches 1 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=1, limit=1] text
execute if score #event_mode jkpof.int matches 2 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=2, limit=1] text
execute if score #event_mode jkpof.int matches 3 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=3, limit=1] text
execute if score #event_mode jkpof.int matches 4 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=4, limit=1] text
execute if score #event_mode jkpof.int matches 5 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=5, limit=1] text
execute if score #event_mode jkpof.int matches 6 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=6, limit=1] text
execute if score #event_mode jkpof.int matches 7 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=7, limit=1] text
execute if score #event_mode jkpof.int matches 8 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=8, limit=1] text
execute if score #event_mode jkpof.int matches 9 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=9, limit=1] text
execute if score #event_mode jkpof.int matches 10 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=10, limit=1] text
execute if score #event_mode jkpof.int matches 11 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=11, limit=1] text
execute if score #event_mode jkpof.int matches 12 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=12, limit=1] text
execute if score #event_mode jkpof.int matches 13 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=13, limit=1] text
execute if score #event_mode jkpof.int matches 14 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=14, limit=1] text
execute if score #event_mode jkpof.int matches 15 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=15, limit=1] text
execute if score #event_mode jkpof.int matches 16 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=16, limit=1] text
execute if score #event_mode jkpof.int matches 17 run data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=17, limit=1] text

summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"]}
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=-1] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=-1, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=1] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=1, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=2] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=2, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=3] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=3, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=4] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=4, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=5] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=5, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=6] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=6, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=7] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=7, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=8] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=8, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=9] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=9, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=10] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=10, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=11] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=11, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=12] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=12, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=13] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=13, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=14] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=14, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=15] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=15, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=16] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=16, limit=1] text
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=17] run data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_event_pool, tag=17, limit=1] text

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.success", color: "green"}, {selector: "@e[type=marker, tag=jkpof_votes, tag=before]", color: "gray", hover_event: {action: "show_text", value: ""}}, {text: " → ", color: "green"}, {selector: "@e[type=marker, tag=jkpof_votes, tag=after]", color: "aqua", hover_event: {action: "show_text", value: ""}}]

# 设置
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=-1] run scoreboard players set #event_mode jkpof.int -1
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=1] run scoreboard players set #event_mode jkpof.int 1
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=2] run scoreboard players set #event_mode jkpof.int 2
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=3] run scoreboard players set #event_mode jkpof.int 3
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=4] run scoreboard players set #event_mode jkpof.int 4
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=5] run scoreboard players set #event_mode jkpof.int 5
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=6] run scoreboard players set #event_mode jkpof.int 6
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=7] run scoreboard players set #event_mode jkpof.int 7
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=8] run scoreboard players set #event_mode jkpof.int 8
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=9] run scoreboard players set #event_mode jkpof.int 9
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=10] run scoreboard players set #event_mode jkpof.int 10
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=11] run scoreboard players set #event_mode jkpof.int 11
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=12] run scoreboard players set #event_mode jkpof.int 12
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=13] run scoreboard players set #event_mode jkpof.int 13
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=14] run scoreboard players set #event_mode jkpof.int 14
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=15] run scoreboard players set #event_mode jkpof.int 15
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=16] run scoreboard players set #event_mode jkpof.int 16
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=17] run scoreboard players set #event_mode jkpof.int 17

# 最多投票数展示
tellraw @a[gamemode=spectator] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.list", color: "green"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=-1] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=-1, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=99}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=1] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=1, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=1}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=2] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=2, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=2}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=3] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=3, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=3}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=4] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=4, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=4}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=5] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=5, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=5}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=6] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=6, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=6}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=7] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=7, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=7}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=8] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=8, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=8}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=9] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=9, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=9}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=10] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=10, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=10}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=11] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=11, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=11}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=12] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=12, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=12}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=13] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=13, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=13}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=14] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=14, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=14}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=15] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=15, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=15}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=16] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=16, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=16}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=17] run tellraw @a[gamemode=spectator] [{selector: "@e[type=text_display, tag=jkpof_event_pool, tag=17, limit=1]"}, {text: " → ", color: "gray"}, {selector: "@a[scores={jkpof.vote=17}, gamemode=spectator]"}]

# 清理
kill @e[type=marker, tag=jkpof_votes]
