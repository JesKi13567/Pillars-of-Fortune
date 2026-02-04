# 记录投票数
execute if score #event_enable__1 jkpof.int matches 1 if score #event_border jkpof.int matches 1.. run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "-1"]}
execute if score #event_enable_1 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "1"]}
execute if score #event_enable_2 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "2"]}
execute if score #event_enable_3 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "3"]}
execute if score #event_enable_4 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "4"]}
execute if score #event_enable_5 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "5"]}
execute if score #event_enable_6 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "6"]}
execute if score #event_enable_7 jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "7"]}

execute store result score @e[type=marker, tag=jkpof_votes, tag=-1, limit=1] jkpof.int if entity @a[scores={jkpof.vote=8}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=1, limit=1] jkpof.int if entity @a[scores={jkpof.vote=1}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=2, limit=1] jkpof.int if entity @a[scores={jkpof.vote=2}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=3, limit=1] jkpof.int if entity @a[scores={jkpof.vote=3}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=4, limit=1] jkpof.int if entity @a[scores={jkpof.vote=4}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=5, limit=1] jkpof.int if entity @a[scores={jkpof.vote=5}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=6, limit=1] jkpof.int if entity @a[scores={jkpof.vote=6}, gamemode=spectator]
execute store result score @e[type=marker, tag=jkpof_votes, tag=7, limit=1] jkpof.int if entity @a[scores={jkpof.vote=7}, gamemode=spectator]

# 判断最大值
scoreboard players set #event_votes_max jkpof.int 0
scoreboard players operation #event_votes_max jkpof.int > @e[type=marker, tag=jkpof_votes] jkpof.int
# 随机选一个同等最大的
execute as @e[type=marker, tag=jkpof_votes] if score @s jkpof.int = #event_votes_max jkpof.int run tag @s add jkpof_votes_max
tag @e[type=marker, tag=jkpof_votes_max, sort=random, limit=1] add jkpof_votes_max_final

# 展示
execute if score #event_mode jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.border.name"}, "]"]
execute if score #event_mode jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.nothing.name"}, "]"]
execute if score #event_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.arrow.name"}, "]"]
execute if score #event_mode jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.lava.name"}, "]"]
execute if score #event_mode jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.lightning.name"}, "]"]
execute if score #event_mode jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.moon_walk.name"}, "]"]
execute if score #event_mode jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.bomb_chicken.name"}, "]"]
execute if score #event_mode jkpof.int matches 6 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.chain_swap.name"}, "]"]
execute if score #event_mode jkpof.int matches 7 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.prop_supply.name"}, "]"]

summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "before"]}
data modify entity @e[type=marker, tag=jkpof_votes, tag=before, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=-1] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.border.name"}, "]"]
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=1] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.arrow.name"}, "]"]
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=2] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.lava.name"}, "]"]
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=3] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.lightning.name"}, "]"]
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=4] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.moon_walk.name"}, "]"]
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=5] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.bomb_chicken.name"}, "]"]
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=6] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.chain_swap.name"}, "]"]
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=7] run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.prop_supply.name"}, "]"]

summon marker 0 0 0 {Tags: ["jkpof", "jkpof_votes", "after"]}
data modify entity @e[type=marker, tag=jkpof_votes, tag=after, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

tellraw @a [{storage: "jk:pof", nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", nbt: "txt.VOF.check.success", color: "green"}, {selector: "@e[type=marker, tag=jkpof_votes, tag=before]", color: "gray"}, {text: " -> ", color: "green"}, {selector: "@e[type=marker, tag=jkpof_votes, tag=after]", color: "aqua"}]

# 设置
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=-1] run scoreboard players set #event_mode jkpof.int -1
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=1] run scoreboard players set #event_mode jkpof.int 1
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=2] run scoreboard players set #event_mode jkpof.int 2
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=3] run scoreboard players set #event_mode jkpof.int 3
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=4] run scoreboard players set #event_mode jkpof.int 4
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=5] run scoreboard players set #event_mode jkpof.int 5
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=6] run scoreboard players set #event_mode jkpof.int 6
execute if entity @e[type=marker, tag=jkpof_votes_max_final, tag=7] run scoreboard players set #event_mode jkpof.int 7

# 最多投票数展示
tellraw @a[gamemode=spectator] [{storage: "jk:pof", nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", nbt: "txt.VOF.check.list", color: "green"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=-1] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.border.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=8}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=1] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.arrow.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=1}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=2] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.lava.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=2}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=3] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.lightning.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=3}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=4] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.moon_walk.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=4}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=5] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.bomb_chicken.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=5}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=6] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.chain_swap.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=6}, gamemode=spectator]"}]
execute if entity @e[type=marker, tag=jkpof_votes_max, tag=7] run tellraw @a[gamemode=spectator] ["[", {storage: "jk:pof", nbt: "txt.event.prop_supply.name"}, "]", {text: " -> ", color: "gray"}, {selector: "@a[scores={jkpof.vote=7}, gamemode=spectator]"}]

# 清理
kill @e[type=marker, tag=jkpof_votes]
