scoreboard players add #lobby_event jkpof.int 1
execute if score #lobby_event jkpof.int matches 6.. run scoreboard players set #lobby_event jkpof.int -1

execute if score #lobby_event jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_event, limit=1] item.id set value "barrier"
execute if score #lobby_event jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_event, limit=1] text set value ["边界收缩", "\n", {text: "边界收缩方向：", color: "aqua"}, {text: "→↓←", color: "green"}, "\n", {text: "可收缩最多 2 次。", color: "aqua"}]

execute if score #lobby_event jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_event, limit=1] item.id set value "emerald"
execute if score #lobby_event jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_event, limit=1] text set value ["无事发生", "\n", {text: "什么事都没有也是一种事件。", color: "aqua"}]

execute if score #lobby_event jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_event, limit=1] item.id set value "arrow"
execute if score #lobby_event jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_event, limit=1] text set value ["万箭齐发", "\n", {text: "所有玩家头上将不断生成", color: "aqua"}, {translate: "entity.minecraft.arrow"}, {text: "。", color: "aqua"}]

execute if score #lobby_event jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_event, limit=1] item.id set value "lava_bucket"
execute if score #lobby_event jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_event, limit=1] text set value ["熔岩地板", "\n", {text: "所有玩家脚下的方块会逐渐变成", color: "aqua"}, {translate: "block.minecraft.lava"}, {text: "。", color: "aqua"}]

execute if score #lobby_event jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_event, limit=1] item.id set value "lightning_rod"
execute if score #lobby_event jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_event, limit=1] text set value ["雷霆之劫", "\n", {text: "给予随机玩家一发", color: "aqua"}, {translate: "entity.minecraft.lightning_bolt"}, {text: "，\n同时给该玩家背包某一栏位进行随机附魔。", color: "aqua"}]

execute if score #lobby_event jkpof.int matches 4 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_event, limit=1] item.id set value "diamond_boots"
execute if score #lobby_event jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_event, limit=1] text set value ["月球漫步", "\n", {text: "所有玩家获得", color: "aqua"}, {translate: "effect.minecraft.jump_boost"}, {text: " + ", color: "aqua"}, {translate: "effect.minecraft.slow_falling"}, {text: "。", color: "aqua"}]

execute if score #lobby_event jkpof.int matches 5 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_event, limit=1] item.id set value "chicken_spawn_egg"
execute if score #lobby_event jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_event, limit=1] text set value ["飞鸡来袭", "\n", {text: "随机选取 2 名玩家确定一条水平投影直线，\n在最高建筑高度（Y=119）生成一只", color: "aqua"}, {translate: "entity.minecraft.chicken"}, {text: "，\n其沿此直线飞行途中会定时投放", color: "aqua"}, {translate: "entity.minecraft.tnt"}, {text: "。", color: "aqua"}]
