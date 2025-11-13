# 详情
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "target"
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["观众投票（观众事件）", "\n", {text: "观众可投票选择下一玩家事件。\n事件初始触发时间为 30 秒时开启投票，\n观众投票人数达到一半后确认下一事件。", color: "aqua"}]
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "barrier"
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["边界收缩", "\n", {text: "边界收缩方向：", color: "aqua"}, {text: "→↓←", color: "green"}, "\n", {text: "可收缩最多 2 次。", color: "aqua"}]
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "emerald"
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["无事发生", "\n", {text: "无事发生也是一种事件，\n开局时必出一次。", color: "aqua"}]
execute if score #event_order jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "arrow"
execute if score #event_order jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["万箭齐发", "\n", {text: "所有玩家头上将不断生成", color: "aqua"}, {translate: "entity.minecraft.arrow"}, {text: "，\n缓冲 2 秒，持续 3 秒。", color: "aqua"}]
execute if score #event_order jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "lava_bucket"
execute if score #event_order jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["熔岩地板", "\n", {text: "所有玩家脚下的方块会逐渐变成", color: "aqua"}, {translate: "block.minecraft.lava"}, {text: "：\n", color: "aqua"}, {translate: "block.minecraft.yellow_wool"}, {text: "->", color: "aqua"}, {translate: "block.minecraft.orange_wool"}, {text: "->", color: "aqua"}, {translate: "block.minecraft.red_wool"}, {text: "->", color: "aqua"}, {translate: "block.minecraft.lava"}]
execute if score #event_order jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "lightning_rod"
execute if score #event_order jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["雷霆之劫", "\n", {text: "给予随机玩家一发", color: "aqua"}, {translate: "entity.minecraft.lightning_bolt"}, {text: "，\n同时给该玩家背包某一栏位进行随机附魔。\n其中，", color: "aqua"}, {translate: "item.minecraft.golden_apple"}, {text: "会变成", color: "aqua"}, {translate: "item.minecraft.enchanted_golden_apple"}, {text: "。", color: "aqua"}]
execute if score #event_order jkpof.int matches 4 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "diamond_boots"
execute if score #event_order jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["月球漫步", "\n", {text: "所有玩家获得", color: "aqua"}, {translate: "effect.minecraft.jump_boost"}, {text: " + ", color: "aqua"}, {translate: "effect.minecraft.slow_falling"}, {text: "。", color: "aqua"}]
execute if score #event_order jkpof.int matches 5 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, limit=1] item.id set value "chicken_spawn_egg"
execute if score #event_order jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, limit=1] text set value ["飞鸡来袭", "\n", {text: "随机选取 2 名玩家确定一条水平投影直线，\n在最高建筑高度（Y=119）生成一只", color: "aqua"}, {translate: "entity.minecraft.chicken"}, {text: "，\n其沿此直线飞行途中会定时投放", color: "aqua"}, {translate: "entity.minecraft.tnt"}, {text: "。", color: "aqua"}]

# 启用
execute if score #event_order jkpof.int matches -2 if score #event_vote jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}
execute if score #event_order jkpof.int matches -1 if score #event_enable__1 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}
execute if score #event_order jkpof.int matches 0 if score #event_enable_0 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}
execute if score #event_order jkpof.int matches 1 if score #event_enable_1 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}
execute if score #event_order jkpof.int matches 2 if score #event_enable_2 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}
execute if score #event_order jkpof.int matches 3 if score #event_enable_3 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}
execute if score #event_order jkpof.int matches 4 if score #event_enable_4 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}
execute if score #event_order jkpof.int matches 5 if score #event_enable_5 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已启用", color: "green"}

execute if score #event_order jkpof.int matches -2 if score #event_vote jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}
execute if score #event_order jkpof.int matches -1 if score #event_enable__1 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}
execute if score #event_order jkpof.int matches 0 if score #event_enable_0 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}
execute if score #event_order jkpof.int matches 1 if score #event_enable_1 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}
execute if score #event_order jkpof.int matches 2 if score #event_enable_2 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}
execute if score #event_order jkpof.int matches 3 if score #event_enable_3 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}
execute if score #event_order jkpof.int matches 4 if score #event_enable_4 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}
execute if score #event_order jkpof.int matches 5 if score #event_enable_5 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {text: "已禁用", color: "red"}

# 一键
scoreboard players reset #event_enables jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_vote jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable__1 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_0 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_1 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_2 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_3 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_4 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_5 jkpof.int

execute if score #event_enables jkpof.int matches 1.. run scoreboard players set #event_ctrl jkpof.int 1
execute if score #event_enables jkpof.int matches 0 run scoreboard players set #event_ctrl jkpof.int 0

execute if score #event_ctrl jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {text: "已全部关闭", color: "red"}
execute if score #event_ctrl jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value [{text: "已", color: "green"}, {text: "部分", color: "yellow"}, "开启"]
execute if score #event_ctrl jkpof.int matches 1 if score #event_enables jkpof.int matches 8 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {text: "已全部开启", color: "green"}
