# 消耗和冷却
clear @s dragon_breath[custom_data={jkpof: ["fireball_dragon"]}] 1
scoreboard players set @s jkpof.cd 20

# 生成
summon dragon_fireball ^ ^ ^.3 {Tags: ["jkpof", "jkpof_fireball_new"]}
function jkpof:state/1/special_item/fireball/throw
