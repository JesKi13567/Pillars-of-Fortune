# 当前事件
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
execute as @s[tag=11] run scoreboard players set #event_order jkpof.int 11
execute as @s[tag=12] run scoreboard players set #event_order jkpof.int 12
execute as @s[tag=13] run scoreboard players set #event_order jkpof.int 13
execute as @s[tag=14] run scoreboard players set #event_order jkpof.int 14
execute as @s[tag=15] run scoreboard players set #event_order jkpof.int 15
execute as @s[tag=16] run scoreboard players set #event_order jkpof.int 16
execute as @s[tag=17] run scoreboard players set #event_order jkpof.int 17

# 发光
execute as @e[type=item_display, tag=jkpof_display_event_order, tag=!-99] run data modify entity @s Glowing set value false
execute as @e[type=item_display, tag=jkpof_display_event_order_mini, tag=!-99] run data modify entity @s Glowing set value false

execute if score #event_order jkpof.int matches -3 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-3, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-2, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-1, limit=1] Glowing set value true
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=0, limit=1] Glowing set value true

# 图标
execute if score #event_broom jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-3, limit=1] item.id set value "brush"
execute if score #event_vote jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-2, limit=1] item.id set value "target"
execute if score #event_enable__1 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-1, limit=1] item.id set value "barrier"
execute if score #event_enable_0 jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=0, limit=1] item.id set value "emerald"

execute if score #event_broom jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-3, limit=1] item.id set value "structure_void"
execute if score #event_vote jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-2, limit=1] item.id set value "structure_void"
execute if score #event_enable__1 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-1, limit=1] item.id set value "structure_void"
execute if score #event_enable_0 jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=0, limit=1] item.id set value "structure_void"

execute if score #event_order jkpof.int matches -3 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "brush"
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "target"
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "barrier"
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "emerald"

function jkpof:state/0/interaction/lobby/event/show/icon {n: 1, c: 'arrow', p: 'tipped_arrow'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 2, c: 'lava_bucket', p: 'powder_snow_bucket'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 3, c: 'lightning_rod', p: 'oxidized_lightning_rod'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 4, c: 'diamond_boots', p: 'golden_boots'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 5, c: 'chicken_spawn_egg', p: 'brown_egg'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 6, c: 'ender_pearl', p: 'enderman_spawn_egg'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 7, c: 'red_bundle', p: 'red_shulker_box'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 8, c: 'iron_bars', p: 'copper_bars'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 9, c: 'glass_pane', p: 'glowstone_dust'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 10, c: 'iron_sword', p: 'copper_sword'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 11, c: 'hay_block', p: 'snow_block'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 12, c: 'iron_block', p: 'copper_block'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 13, c: 'lodestone', p: 'hopper'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 14, c: 'wheat_seeds', p: 'oak_sapling'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 15, c: 'rabbit_foot', p: 'rabbit_stew'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 16, c: 'skeleton_skull', p: 'zombie_head'}
function jkpof:state/0/interaction/lobby/event/show/icon {n: 17, c: 'tnt', p: 'orange_stained_glass'}

# 详情-文本/数字
execute if score #event_touch_change.block_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.include.no"}, {translate: "block.minecraft.water"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.and"}, {translate: "block.minecraft.lava"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.include.last"}]
execute if score #event_touch_change.block_type jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.include.yes"}, {translate: "block.minecraft.water"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.and"}, {translate: "block.minecraft.lava"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.include.last"}]
data modify entity @e[type=marker, tag=jkpof_touch_text, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

data modify entity @e[type=text_display, tag=jkpof_display_event_num, limit=1] view_range set value 0
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_event_num, limit=1] view_range set value 1
execute if score #event_order jkpof.int matches 3 if score #event_plus_3 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_num, limit=1] view_range set value 1
execute if score #event_order jkpof.int matches 15 run data modify entity @e[type=text_display, tag=jkpof_display_event_num, limit=1] view_range set value 1
execute if score #event_order jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_event_num, limit=1] view_range set value 1

# 详情-普通
execute if score #event_order jkpof.int matches -3 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.broom.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.broom.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches -2 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.vote.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.vote.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.border.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.border.lore", color: "aqua"}, {text: "→← + ↓", color: "green"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p1", color: "aqua"}, {score: {name: "#event_border.t", objective: "jkpof.int"}, color: "white", underlined: true}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.nothing.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.nothing.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.lore.p1", color: "aqua"}, {translate: "entity.minecraft.arrow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.lore.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.lava.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.lore", color: "aqua"}, {translate: "block.minecraft.lava"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}, "\n", {translate: "block.minecraft.yellow_wool"}, {text: "→", color: "aqua"}, {translate: "block.minecraft.orange_wool"}, {text: "→", color: "aqua"}, {translate: "block.minecraft.red_wool"}, {text: "→", color: "aqua"}, {translate: "block.minecraft.lava"}]
execute if score #event_order jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.lore.p1", color: "aqua"}, {translate: "entity.minecraft.lightning_bolt"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.lore.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.lore", color: "aqua"}, " ", {translate: "effect.minecraft.jump_boost"}, {text: " + ", color: "aqua"}, {translate: "effect.minecraft.slow_falling"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.effects", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p1", color: "aqua"}, {translate: "entity.minecraft.chicken"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p2", color: "aqua"}, {translate: "entity.minecraft.tnt"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p3", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 6 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 7 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{text: "", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name", color: "white"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p1"}, "\n1. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p2"}, " (80%)\n2. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p3"}, {translate: "item.minecraft.enchanted_book", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}, " (10%)\n3. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.lore.p3"}, {translate: "item.minecraft.potion", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}, " (10%)"]
execute if score #event_order jkpof.int matches 8 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.lore", color: "aqua"}, {translate: "block.minecraft.barrier"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 9 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.lore", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 10 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.lore", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 11 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 12 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.iron_torrent.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.iron_torrent.lore", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 13 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.lore", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 14 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.lore.p1", color: "aqua"}, {translate: "attribute.name.scale"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.lore.p2", color: "aqua"}, " 1/2", {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 15 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.lore.p1", color: "aqua"}, {selector: "@e[type=marker, tag=jkpof_touch_text, limit=1]", underlined: true}, {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.lore.p2", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 16 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.purge.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.lore.p1", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.lore.p2", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p1", color: "aqua"}, {score: {name: "#event_nuke.t", objective: "jkpof.int"}, color: "white", underlined: true}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p2", color: "aqua"}]

# 详情-事件+
execute if score #event_order jkpof.int matches 1 if score #event_plus_1 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.arrow.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.lore.p1", color: "aqua"}, {translate: "item.minecraft.tipped_arrow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.lore.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 2 if score #event_plus_2 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lava.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.lore", color: "aqua"}, {translate: "block.minecraft.powder_snow"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}, "\n", {translate: "block.minecraft.yellow_wool"}, {text: "→", color: "aqua"}, {translate: "block.minecraft.orange_wool"}, {text: "→", color: "aqua"}, {translate: "block.minecraft.red_wool"}, {text: "→", color: "aqua"}, {translate: "block.minecraft.powder_snow"}]
execute if score #event_order jkpof.int matches 3 if score #event_plus_3 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lightning.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lightning.lore.p1", color: "aqua"}, {score: {name: "#event_lightning.t", objective: "jkpof.int"}, color: "white", underlined: true}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lightning.lore.p2", color: "aqua"}, {translate: "entity.minecraft.lightning_bolt"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.lore.p2", color: "aqua"}]
execute if score #event_order jkpof.int matches 4 if score #event_plus_4 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.moon_walk.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.moon_walk.lore", color: "aqua"}, " ", {translate: "effect.minecraft.jump_boost"}, {text: " + ", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.moon_walk.nofall"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.effects", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 5 if score #event_plus_5 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bomb_chicken.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p1", color: "aqua"}, {translate: "entity.minecraft.chicken"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p2", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.null_bomb.name", color: "light_purple"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.lore.p3", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 6 if score #event_plus_6 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.chain_swap.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.chain_swap.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 7 if score #event_plus_7 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{text: "", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.name", color: "white"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.lore.p1"}, "\n1. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.lore.p2"}, " (80%)\n2. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.lore.p3"}, {translate: "item.minecraft.enchanted_book", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}, " (10%)\n3. ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.lore.p3"}, {translate: "item.minecraft.potion", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}, " (10%)"]
execute if score #event_order jkpof.int matches 8 if score #event_plus_8 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.vertical_lock.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.vertical_lock.lore", color: "aqua"}, {translate: "block.minecraft.barrier"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 9 if score #event_plus_9 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.invisible_coating.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.invisible_coating.lore", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 10 if score #event_plus_10 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.lore", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 11 if score #event_plus_11 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bountiful_harvest.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bountiful_harvest.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 12 if score #event_plus_12 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.iron_torrent.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.iron_torrent.lore", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 13 if score #event_plus_13 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.loot_magnet.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.loot_magnet.lore", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
execute if score #event_order jkpof.int matches 14 if score #event_plus_14 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.kid_mode.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.lore.p1", color: "aqua"}, {translate: "attribute.name.scale"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.lore.p2", color: "aqua"}, " 50%~125% ", {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 15 if score #event_plus_15 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.touch_change.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.touch_change.lore.p1", color: "aqua"}, {selector: "@e[type=marker, tag=jkpof_touch_text, limit=1]", underlined: true}, {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.lore.p2", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 16 if score #event_plus_16 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.lore", color: "aqua"}]
execute if score #event_order jkpof.int matches 17 if score #event_plus_17 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.plus.nuke.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.lore.p1", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.nuke.lore", color: "aqua"}, {translate: "block.minecraft.orange_stained_glass", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p1", color: "aqua"}, {score: {name: "#event_nuke.t", objective: "jkpof.int"}, color: "white", underlined: true}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p2", color: "aqua"}]

# 详情-混合
execute if score #event_order jkpof.int matches 1 if score #event_mix_1 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.arrow.name"}]
execute if score #event_order jkpof.int matches 2 if score #event_mix_2 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.lava.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lava.name"}]
execute if score #event_order jkpof.int matches 3 if score #event_mix_3 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lightning.name"}]
execute if score #event_order jkpof.int matches 4 if score #event_mix_4 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.moon_walk.name"}]
execute if score #event_order jkpof.int matches 5 if score #event_mix_5 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bomb_chicken.name"}]
execute if score #event_order jkpof.int matches 6 if score #event_mix_6 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.chain_swap.name"}]
execute if score #event_order jkpof.int matches 7 if score #event_mix_7 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.name"}]
execute if score #event_order jkpof.int matches 8 if score #event_mix_8 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.vertical_lock.name"}]
execute if score #event_order jkpof.int matches 9 if score #event_mix_9 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.invisible_coating.name"}]
execute if score #event_order jkpof.int matches 10 if score #event_mix_10 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.name"}]
execute if score #event_order jkpof.int matches 11 if score #event_mix_11 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bountiful_harvest.name"}]
execute if score #event_order jkpof.int matches 12 if score #event_mix_12 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.iron_torrent.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.iron_torrent.name"}]
execute if score #event_order jkpof.int matches 13 if score #event_mix_13 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.loot_magnet.name"}]
execute if score #event_order jkpof.int matches 14 if score #event_mix_14 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.kid_mode.name"}]
execute if score #event_order jkpof.int matches 15 if score #event_mix_15 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.touch_change.name"}, "\n", {selector: "@e[type=marker, tag=jkpof_touch_text, limit=1]", underlined: true}]
execute if score #event_order jkpof.int matches 16 if score #event_mix_16 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.purge.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.name"}]
execute if score #event_order jkpof.int matches 17 if score #event_mix_17 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_order, tag=-99, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.name"}, " / ", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.nuke.name"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p1", color: "aqua"}, {score: {name: "#event_nuke.t", objective: "jkpof.int"}, color: "white", underlined: true}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.times.p2", color: "aqua"}]

# 状态-启用
execute if score #event_order jkpof.int matches -3 if score #event_broom jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}]
execute if score #event_order jkpof.int matches -2 if score #event_vote jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}]
execute if score #event_order jkpof.int matches -1 if score #event_enable__1 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}]
execute if score #event_order jkpof.int matches 0 if score #event_enable_0 jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}]

execute if score #event_order jkpof.int matches -3 if score #event_broom jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}]
execute if score #event_order jkpof.int matches -2 if score #event_vote jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}]
execute if score #event_order jkpof.int matches -1 if score #event_enable__1 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}]
execute if score #event_order jkpof.int matches 0 if score #event_enable_0 jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}]

execute if score #event_order jkpof.int matches 1 run function jkpof:state/0/interaction/lobby/event/show/order {n: 1}
execute if score #event_order jkpof.int matches 2 run function jkpof:state/0/interaction/lobby/event/show/order {n: 2}
execute if score #event_order jkpof.int matches 3 run function jkpof:state/0/interaction/lobby/event/show/order {n: 3}
execute if score #event_order jkpof.int matches 4 run function jkpof:state/0/interaction/lobby/event/show/order {n: 4}
execute if score #event_order jkpof.int matches 5 run function jkpof:state/0/interaction/lobby/event/show/order {n: 5}
execute if score #event_order jkpof.int matches 6 run function jkpof:state/0/interaction/lobby/event/show/order {n: 6}
execute if score #event_order jkpof.int matches 7 run function jkpof:state/0/interaction/lobby/event/show/order {n: 7}
execute if score #event_order jkpof.int matches 8 run function jkpof:state/0/interaction/lobby/event/show/order {n: 8}
execute if score #event_order jkpof.int matches 9 run function jkpof:state/0/interaction/lobby/event/show/order {n: 9}
execute if score #event_order jkpof.int matches 10 run function jkpof:state/0/interaction/lobby/event/show/order {n: 10}
execute if score #event_order jkpof.int matches 11 run function jkpof:state/0/interaction/lobby/event/show/order {n: 11}
execute if score #event_order jkpof.int matches 12 run function jkpof:state/0/interaction/lobby/event/show/order {n: 12}
execute if score #event_order jkpof.int matches 13 run function jkpof:state/0/interaction/lobby/event/show/order {n: 13}
execute if score #event_order jkpof.int matches 14 run function jkpof:state/0/interaction/lobby/event/show/order {n: 14}
execute if score #event_order jkpof.int matches 15 run function jkpof:state/0/interaction/lobby/event/show/order {n: 15}
execute if score #event_order jkpof.int matches 16 run function jkpof:state/0/interaction/lobby/event/show/order {n: 16}
execute if score #event_order jkpof.int matches 17 run function jkpof:state/0/interaction/lobby/event/show/order {n: 17}

# 一键
data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.not_all", color: "yellow"}

scoreboard players reset #event_enables jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_broom jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_vote jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable__1 jkpof.int
scoreboard players operation #event_enables jkpof.int += #event_enable_0 jkpof.int
execute if score #event_enable_1 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_2 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_3 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_4 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_5 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_6 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_7 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_8 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_9 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_10 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_11 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_12 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_13 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_14 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_15 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_16 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enable_17 jkpof.int matches 1.. run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enables jkpof.int matches 0 run scoreboard players set #event_ctrl jkpof.int 0
execute if score #event_enables jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.all", color: "red"}
execute if score #event_enables jkpof.int matches 21 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.all", color: "green"}

scoreboard players reset #event_enables jkpof.int
execute if score #event_plus_1 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_2 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_3 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_4 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_5 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_6 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_7 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_8 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_9 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_10 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_11 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_12 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_13 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_14 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_15 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_16 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_plus_17 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enables jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.global.ctrl", color: "green"}

scoreboard players reset #event_enables jkpof.int
execute if score #event_mix_1 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_2 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_3 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_4 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_5 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_6 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_7 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_8 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_9 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_10 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_11 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_12 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_13 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_14 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_15 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_16 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_mix_17 jkpof.int matches 1 run scoreboard players add #event_enables jkpof.int 1
execute if score #event_enables jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_event_ctrl, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.event.global.mix", color: "green"}

# 预设
function jkpof:state/0/interaction/lobby/event/preset/show
