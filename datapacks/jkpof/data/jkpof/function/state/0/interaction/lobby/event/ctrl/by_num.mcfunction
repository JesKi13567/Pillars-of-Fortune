$scoreboard players operation #event_enable_$(n) jkpof.int = #event_ctrl jkpof.int
# 事件+
$execute unless score #event_ctrl jkpof.int matches 2 run scoreboard players set #event_plus_$(n) jkpof.int 0
$execute if score #event_ctrl jkpof.int matches 2 run scoreboard players set #event_plus_$(n) jkpof.int 1
# 混合
$execute unless score #event_ctrl jkpof.int matches 3 run scoreboard players set #event_mix_$(n) jkpof.int 0
$execute if score #event_ctrl jkpof.int matches 3 run scoreboard players set #event_mix_$(n) jkpof.int 1
