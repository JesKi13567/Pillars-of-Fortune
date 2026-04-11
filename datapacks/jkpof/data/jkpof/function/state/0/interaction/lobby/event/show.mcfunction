# 标号
execute as @s[tag=-3] run scoreboard players set #event_order jkpof.int -3
execute as @s[tag=-2] run scoreboard players set #event_order jkpof.int -2
execute as @s[tag=-1] run scoreboard players set #event_order jkpof.int -1
execute as @s[tag=0] run scoreboard players set #event_order jkpof.int 0
execute as @s[tag=1] run scoreboard players set #event_order jkpof.int 1
execute as @s[tag=2] run scoreboard players set #event_order jkpof.int 2
execute as @s[tag=3] run scoreboard players set #event_order jkpof.int 3
execute as @s[tag=4] run scoreboard players set #event_order jkpof.int 4
execute as @s[tag=5] run scoreboard players set #event_order jkpof.int 5
execute as @s[tag=6] run scoreboard players set #event_order jkpof.int 6
execute as @s[tag=7] run scoreboard players set #event_order jkpof.int 7
execute as @s[tag=8] run scoreboard players set #event_order jkpof.int 8
execute as @s[tag=9] run scoreboard players set #event_order jkpof.int 9
execute as @s[tag=10] run scoreboard players set #event_order jkpof.int 10

# 显示启用
execute if score #event_broom jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-3, limit=1] item.id set value "brush"
execute if score #event_vote jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-2, limit=1] item.id set value "target"
execute if score #event_enable__1 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-1, limit=1] item.id set value "barrier"
execute if score #event_enable_0 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=0, limit=1] item.id set value "emerald"
execute if score #event_enable_1 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=1, limit=1] item.id set value "arrow"
execute if score #event_enable_2 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=2, limit=1] item.id set value "lava_bucket"
execute if score #event_enable_3 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=3, limit=1] item.id set value "lightning_rod"
execute if score #event_enable_4 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=4, limit=1] item.id set value "diamond_boots"
execute if score #event_enable_5 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=5, limit=1] item.id set value "chicken_spawn_egg"
execute if score #event_enable_6 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=6, limit=1] item.id set value "ender_pearl"
execute if score #event_enable_7 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=7, limit=1] item.id set value "honeycomb"
execute if score #event_enable_8 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=8, limit=1] item.id set value "iron_bars"
execute if score #event_enable_9 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=9, limit=1] item.id set value "glass_pane"
execute if score #event_enable_10 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=10, limit=1] item.id set value "poisonous_potato"

execute if score #event_broom jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-3, limit=1] item.id set value "structure_void"
execute if score #event_vote jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-2, limit=1] item.id set value "structure_void"
execute if score #event_enable__1 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-1, limit=1] item.id set value "structure_void"
execute if score #event_enable_0 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=0, limit=1] item.id set value "structure_void"
execute if score #event_enable_1 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=1, limit=1] item.id set value "structure_void"
execute if score #event_enable_2 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=2, limit=1] item.id set value "structure_void"
execute if score #event_enable_3 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=3, limit=1] item.id set value "structure_void"
execute if score #event_enable_4 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=4, limit=1] item.id set value "structure_void"
execute if score #event_enable_5 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=5, limit=1] item.id set value "structure_void"
execute if score #event_enable_6 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=6, limit=1] item.id set value "structure_void"
execute if score #event_enable_7 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=7, limit=1] item.id set value "structure_void"
execute if score #event_enable_8 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=8, limit=1] item.id set value "structure_void"
execute if score #event_enable_9 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=9, limit=1] item.id set value "structure_void"
execute if score #event_enable_10 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=10, limit=1] item.id set value "structure_void"

execute as @e[type=item_display, tag=jkpof_display_event_order, tag=!-99] run data modify entity @s Glowing set value false
execute if score #event_order jkpof.int matches -3 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-3, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-2, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-1, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=0, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=1, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=2, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=3, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 4 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=4, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 5 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=5, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 6 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=6, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 7 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=7, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 8 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=8, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 9 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=9, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 10 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=10, limit=1] Glowing set value true

# 详情
execute if score #event_order jkpof.int matches -3 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "brush"
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "target"
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "barrier"
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "emerald"
execute if score #event_order jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "arrow"
execute if score #event_order jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "lava_bucket"
execute if score #event_order jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "lightning_rod"
execute if score #event_order jkpof.int matches 4 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "diamond_boots"
execute if score #event_order jkpof.int matches 5 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "chicken_spawn_egg"
execute if score #event_order jkpof.int matches 6 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "ender_pearl"
execute if score #event_order jkpof.int matches 7 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "honeycomb"
execute if score #event_order jkpof.int matches 8 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "iron_bars"
execute if score #event_order jkpof.int matches 9 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "glass_pane"
execute if score #event_order jkpof.int matches 10 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "poisonous_potato"

execute if score #event_order jkpof.int matches -3 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.broom.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.broom.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.vote.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.vote.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.border.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.border.lore.p1", color: "aqua"}, {text: "→← + ↓", color: "green"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.border.lore.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.nothing.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.nothing.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.lore.p1", color: "aqua"}, {translate: "entity.minecraft.arrow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.lore.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.lava.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.lore", color: "aqua"}, {translate: "block.minecraft.lava"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}, "\n", {translate: "block.minecraft.yellow_wool"}, {text: "->", color: "aqua"}, {translate: "block.minecraft.orange_wool"}, {text: "->", color: "aqua"}, {translate: "block.minecraft.red_wool"}, {text: "->", color: "aqua"}, {translate: "block.minecraft.lava"}]
execute if score #event_order jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.lore.p1", color: "aqua"}, {translate: "entity.minecraft.lightning_bolt"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.lore.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.lore", color: "aqua"}, " ", {translate: "effect.minecraft.jump_boost"}, {text: " + ", color: "aqua"}, {translate: "effect.minecraft.slow_falling"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.effects", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p1", color: "aqua"}, {translate: "entity.minecraft.chicken"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p2", color: "aqua"}, {translate: "entity.minecraft.tnt"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p3", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 6 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 7 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{text: "", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name", color: "white"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p1"}, "\n1. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p2"}, "\n2. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p3"}, {translate: "item.minecraft.enchanted_book", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}, "\n3. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p3"}, {translate: "item.minecraft.potion", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}]
execute if score #event_order jkpof.int matches 8 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.lore", color: "aqua"}, {translate: "block.minecraft.barrier"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.last", color: "aqua"}, {text: "8", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 9 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.lore", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.last", color: "aqua"}, {text: "10", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 10 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.lore", color: "aqua"}]

# 启用
execute if score #event_order jkpof.int matches -3 if score #event_broom jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches -2 if score #event_vote jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches -1 if score #event_enable__1 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 0 if score #event_enable_0 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 1 if score #event_enable_1 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 2 if score #event_enable_2 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 3 if score #event_enable_3 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 4 if score #event_enable_4 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 5 if score #event_enable_5 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 6 if score #event_enable_6 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 7 if score #event_enable_7 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 8 if score #event_enable_8 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 9 if score #event_enable_9 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}
execute if score #event_order jkpof.int matches 10 if score #event_enable_10 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}

execute if score #event_order jkpof.int matches -3 if score #event_broom jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches -2 if score #event_vote jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches -1 if score #event_enable__1 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 0 if score #event_enable_0 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 1 if score #event_enable_1 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 2 if score #event_enable_2 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 3 if score #event_enable_3 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 4 if score #event_enable_4 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 5 if score #event_enable_5 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 6 if score #event_enable_6 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 7 if score #event_enable_7 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 8 if score #event_enable_8 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 9 if score #event_enable_9 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}
execute if score #event_order jkpof.int matches 10 if score #event_enable_10 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}

# 一键
scoreboard players reset #event_enables jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_broom jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_vote jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable__1 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_0 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_1 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_2 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_3 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_4 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_5 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_6 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_7 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_8 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_9 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_10 jkpof.int

execute if score #event_enables jkpof.int matches 1.. run scoreboard players set #event_ctrl jkpof.int 1
execute if score #event_enables jkpof.int matches 0 run scoreboard players set #event_ctrl jkpof.int 0

execute if score #event_ctrl jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.all", color: "red"}
execute if score #event_ctrl jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.not_all", color: "yellow"}
execute if score #event_ctrl jkpof.int matches 1 if score #event_enables jkpof.int matches 14 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.all", color: "green"}
