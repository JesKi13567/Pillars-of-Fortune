# 图标
$execute if score #event_enable_$(n) jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=$(n), limit=1] item.id set value "structure_void"
$execute if score #event_enable_$(n) jkpof.int matches 1.. run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=$(n), limit=1] item.id set value "$(c)"

$execute if score #event_plus_$(n) jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=$(n), limit=1] item.id set value "$(p)"

$execute unless score #event_mix_$(n) jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order_mini, tag=$(n), limit=1] view_range set value false
$execute if score #event_mix_$(n) jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order_mini, tag=$(n), limit=1] view_range set value true
$execute if score #event_mix_$(n) jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order_mini, tag=$(n), limit=1] item.id set value "$(p)"

$execute if score #event_order jkpof.int matches $(n) unless score #event_plus_$(n) jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "$(c)"
$execute if score #event_order jkpof.int matches $(n) if score #event_plus_$(n) jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_event_order, tag=-99, limit=1] item.id set value "$(p)"
