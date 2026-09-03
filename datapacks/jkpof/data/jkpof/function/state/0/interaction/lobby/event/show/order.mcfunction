# 当前
$data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=$(n), limit=1] Glowing set value true
$data modify entity @e[type=item_display, tag=jkpof_display_event_order_mini, tag=$(n), limit=1] Glowing set value true

# 启用
$execute if score #event_enable_$(n) jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}]
$execute if score #event_enable_$(n) jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "green"}]
$execute if score #event_enable_$(n) jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.top.events", color: "gold"}, "+"]
$execute if score #event_enable_$(n) jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_event_switch, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.event.global.mix", color: "gold"}]
