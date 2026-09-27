# 附赠
$execute as @$(A)[scores={jkpof.state=2}] run loot give @$(S) loot {functions: [{type: "set_components", components: {max_stack_size: 64}}, {type: "set_count", count: {type: "score", target: "this", score: "jkpof.item.count"}}], pools: [{rolls: 1, entries: [{type: "loot_table", value: "jkpof:item/64/$(I)"}]}]}
$scoreboard players remove #event_prop_supply.count.$(I) jkpof.int 1
